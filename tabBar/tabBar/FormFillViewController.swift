//
//  FormFillViewController.swift
//  tabBar
//
//  Created by Mac on 14/11/1944 Saka.
//

import UIKit

class FormFillViewController: UIViewController {
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var mobileNumberTextField: UITextField!
    @IBOutlet weak var adressTextField: UITextField!
    var studentClouser : ((Student)->Void)?
    var firstname : String = ""
    var lastname : String = ""
    var mobilenumber : Int?
    var aadress : String = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func sumitForm(_ sender: Any) {
        firstname = firstNameTextField.text!
        lastname = lastNameTextField.text!
        mobilenumber = Int(mobileNumberTextField.text!)
        aadress = adressTextField.text!
        
        guard let student = studentClouser else{
            return
        }
        let studentObject = Student(firstName: firstname, lastName: lastname, mobileNumber: mobilenumber ?? 0, adress: aadress)
        
        student(studentObject)
        navigationController?.popViewController(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

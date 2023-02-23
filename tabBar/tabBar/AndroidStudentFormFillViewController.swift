//
//  AndroidStudentFormFillViewController.swift
//  tabBar
//
//  Created by Mac on 15/11/1944 Saka.
//

import UIKit

class AndroidStudentFormFillViewController: UIViewController {
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var mobileNumberTextField: UITextField!
    @IBOutlet weak var adressTextField: UITextField!
    var firstName : String = ""
    var lastName : String = ""
    var mobileNumber : Int?
    var adress : String = ""
    var  Delegate : StudentInfoProtocol?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func sumitForm(_ sender: Any) {
        firstName = firstNameTextField.text!
        lastName = lastNameTextField.text!
        mobileNumber = Int(mobileNumberTextField.text!)
        adress = adressTextField.text!
        
        guard let studentDelegate = Delegate else{
            print("Delegate Not Found")
            return
        }
        var studentObject = Student(firstName: firstName, lastName: lastName, mobileNumber: mobileNumber ?? 0, adress: adress)
        studentDelegate.passDetails(student: studentObject)
        
        self.navigationController?.popViewController(animated: true)
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

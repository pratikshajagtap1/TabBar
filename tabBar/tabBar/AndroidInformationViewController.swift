//
//  AndroidInformationViewController.swift
//  tabBar
//
//  Created by Mac on 15/11/1944 Saka.
//

import UIKit

class AndroidInformationViewController: UIViewController {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var androidInfoTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = "Course Detail"
        androidInfoTextView.text = "In today's mobile world, peoples are moving more towards the use of smartphones. Smartphones provide flexibility and easy to access anything anywhere for people. That's why Android Development emerges as the most popular filed and growing over the world. That's why the demand of Android Developers is getting high among all the IT Companies. At Felix ITs, you will get the best professional Android App Development Training Courses in Pune. Become an Android App developer in three months with a structured and meticulous Training program "
        // Do any additional setup after loading the view.
    }
    @IBAction func nextPage(_ sender: Any) {
        let androidStudentInformationViewController = self.storyboard?.instantiateViewController(withIdentifier: "AndroidStudentInformationViewController") as! AndroidStudentInformationViewController
        self.navigationController?.pushViewController(androidStudentInformationViewController, animated: true)
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

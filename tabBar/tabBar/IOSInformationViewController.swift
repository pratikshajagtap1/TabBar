//
//  IOSInformationViewController.swift
//  tabBar
//
//  Created by Mac on 14/11/1944 Saka.
//

import UIKit

class IOSInformationViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var courseDetailTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = "Course Detail"
   courseDetailTextView.text = "iOS is popular mobile platform from Apple and is having huge potential with large number of jobs and excellent payouts. he iExpert course is designed for students who want to learn iOS App Development starting from the basics. The course will cover the prerequisite i.e. C, C++ programming along with Data Structures.                                           The course will then take you through the Swift programming language which will be used to write iOS applications.This course will cover each and every details of iOS App Development. It will have a great emphasis on topics like View Controllers, Web Services, Multithreading, Storyboard and many more.                                                       The course is delivered by faculty having more than 10 years of experience in iOS App Development, and delivered more than 50 applications on Apple App Store."
    }

    @IBAction func next(_ sender: Any) {
        let studentInfoViewController = self.storyboard?.instantiateViewController(withIdentifier: "StudentInformationViewController") as! StudentInformationViewController
        self.navigationController?.pushViewController(studentInfoViewController, animated: true)
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

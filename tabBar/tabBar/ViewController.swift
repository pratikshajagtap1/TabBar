//
//  ViewController.swift
//  tabBar
//
//  Created by Mac on 14/11/1944 Saka.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func next(_ sender: Any) {
        let iOSInfoViewController = self.storyboard?.instantiateViewController(withIdentifier: "IOSInformationViewController") as! IOSInformationViewController
        self.navigationController?.pushViewController(iOSInfoViewController, animated: true)
        
    }
    
    
}


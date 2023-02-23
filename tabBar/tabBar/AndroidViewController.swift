//
//  AndroidViewController.swift
//  tabBar
//
//  Created by Mac on 14/11/1944 Saka.
//

import UIKit

class AndroidViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func next(_ sender: Any) {
        let androidInformationViewController = self.storyboard?.instantiateViewController(withIdentifier: "AndroidInformationViewController") as! AndroidInformationViewController
        
        self.navigationController?.pushViewController(androidInformationViewController, animated: true)
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

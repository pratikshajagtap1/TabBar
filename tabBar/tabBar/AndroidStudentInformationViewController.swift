//
//  AndroidStudentInformationViewController.swift
//  tabBar
//
//  Created by Mac on 15/11/1944 Saka.
//

import UIKit

class AndroidStudentInformationViewController: UIViewController{
    
    

    @IBOutlet weak var studentCollectionView: UICollectionView!
    var students : [Student] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        studentCollectionView.delegate  = self
        studentCollectionView.dataSource = self
        // Do any additional setup after loading the view.
      var uinibName = UINib(nibName: "StudentCollectionViewCell", bundle: nil)
        self.studentCollectionView.register(uinibName, forCellWithReuseIdentifier: "StudentCollectionViewCell")
    }
    @IBAction func addStudentDetails(_ sender: Any) {
        let androidStudentFormFillViewController = self.storyboard?.instantiateViewController(withIdentifier: "AndroidStudentFormFillViewController") as! AndroidStudentFormFillViewController
        
        androidStudentFormFillViewController.Delegate = self
        
        self.navigationController?.pushViewController(androidStudentFormFillViewController, animated: true)
    }
    

    
}
extension AndroidStudentInformationViewController : UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return students.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let studentCollectionViewCell = self.studentCollectionView.dequeueReusableCell(withReuseIdentifier: "StudentCollectionViewCell", for: indexPath) as! StudentCollectionViewCell
     
        let eachObject  = students[indexPath.row]
        studentCollectionViewCell.firstNameLabel.text = eachObject.firstName
        studentCollectionViewCell.lastNameLabel.text = eachObject.lastName
        studentCollectionViewCell.mobileNumberLabel.text = String(eachObject.mobileNumber)
        studentCollectionViewCell.adressLabel.text = eachObject.adress
        return studentCollectionViewCell
    }
    
    
}
extension AndroidStudentInformationViewController : UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    let viewWidth = view.frame.size.width/2
    
        return CGSize(width: viewWidth, height: viewWidth)
    }
}
extension AndroidStudentInformationViewController: StudentInfoProtocol{
    func passDetails(student: Student) {
        students.append(student)
        studentCollectionView.reloadData()
    }
    
}

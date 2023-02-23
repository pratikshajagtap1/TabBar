//
//  StudentInformationViewController.swift
//  tabBar
//
//  Created by Mac on 14/11/1944 Saka.
//

import UIKit

class StudentInformationViewController: UIViewController {
    @IBOutlet weak var studentCollectionView: UICollectionView!
    var students : [Student] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        studentCollectionView.dataSource = self
        studentCollectionView.delegate = self
        // Do any additional setup after loading the view.
        let uinibName = UINib(nibName: "StudentCollectionViewCell", bundle: nil)
        self.studentCollectionView.register(uinibName, forCellWithReuseIdentifier: "StudentCollectionViewCell")
    }
    
    
    @IBAction func addDetails(_ sender: Any) {
    let formFillViewController = self.storyboard?.instantiateViewController(withIdentifier: "FormFillViewController") as! FormFillViewController
        
        formFillViewController.studentClouser = {
            (data) in
            self.students.append(data)
            self.studentCollectionView.reloadData()
        }
        self.navigationController?.pushViewController(formFillViewController, animated: true)
    }
}

    
extension StudentInformationViewController : UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return students.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let studentCollectionViewCell = self.studentCollectionView.dequeueReusableCell(withReuseIdentifier: "StudentCollectionViewCell", for: indexPath) as! StudentCollectionViewCell
        
        let eachObject = students[indexPath.row]
        studentCollectionViewCell.firstNameLabel.text = eachObject.firstName
        studentCollectionViewCell.lastNameLabel.text = eachObject.lastName
        studentCollectionViewCell.mobileNumberLabel.text = String(eachObject.mobileNumber)
        studentCollectionViewCell.adressLabel.text = eachObject.adress
        studentCollectionViewCell.layer.borderColor = .init(red: 0, green: 0, blue:0, alpha: 1)
        studentCollectionViewCell.layer.borderWidth = 2
        return studentCollectionViewCell
    }
    
    
}
extension StudentInformationViewController : UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let viewWidth = view.frame.size.width/2-5
        
        return CGSize(width: viewWidth, height: viewWidth * 0.75)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }
    
}




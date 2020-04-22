//
//  addViewController.swift
//  booknote
//
//  Created by 木村美希 on 2020/02/22.
//  Copyright © 2020 木村美希. All rights reserved.
//

import UIKit
import RealmSwift

class addViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    @IBOutlet var photoImageView: UIImageView!
    @IBOutlet var textField1: UITextField!
    @IBOutlet var textField2: UITextField!
    var data: NSData!
    var genreNumber: Int!
    
    @IBAction func selectphoto(){
        let imagePickerController: UIImagePickerController = UIImagePickerController()

        imagePickerController.sourceType = UIImagePickerController.SourceType.photoLibrary
        imagePickerController.allowsEditing = true
        imagePickerController.delegate = self

        self.present(imagePickerController, animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        
        
        super.viewDidLoad()
        


        // Do any additional setup after loading the view.
    }
    
    func imagePickerController(_ picker: UIImagePickerController,
                                  didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]){
           
           let image = info[.originalImage] as? UIImage
           photoImageView.image = image
        data = image!.pngData() as NSData?
        self.dismiss(animated: true, completion: nil)
      

    }
    
    @IBAction func saveButton(){
        let bookmodel = BookModel()
        bookmodel.bookTitle = textField1.text!
        bookmodel.bookAuther = textField2.text!
        bookmodel.image = data
        
        let realm = try! Realm()
        
        try! realm.write {
            realm.add(bookmodel)
        }
        
        print(bookmodel)
        
        
    }
    
    
}

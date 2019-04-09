//
//  addItemLayout.swift
//  localDatabase2
//
//  Created by Muzahid on 4/4/19.
//  Copyright © 2019 AppGang. All rights reserved.
//

import UIKit

class addItemLayout: UIViewController,UINavigationControllerDelegate, UIImagePickerControllerDelegate {

    
    @IBOutlet weak var name: UITextField!
    
    @IBOutlet weak var model: UITextField!
    
    @IBOutlet weak var brand: UITextField!
    
    @IBOutlet weak var quality: UITextField!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var price: UITextField!
    @IBOutlet weak var saveBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        saveBtn.layer.cornerRadius = 8
         let date = getcurrenDAteTime()
       
        print(date)

        imageView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(pickimage)))
    }
    
    @objc func pickimage()  {
       let imagecontroller = UIImagePickerController()
        imagecontroller.delegate = self
        imagecontroller.sourceType = UIImagePickerControllerSourceType.photoLibrary
        self.present(imagecontroller, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        imageView.image = info[UIImagePickerControllerOriginalImage] as? UIImage
        self.dismiss(animated: true, completion: nil)
    }
    
    //button action is below
    
    @IBAction func saveAction(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
        
          
        let dict = ["name": name.text, "brand": brand.text, "price": price.text]
        localData.shareInstance.save(object: dict as! Dictionary)
        
        name.text = ""
        model.text = ""
        brand.text = ""
        price.text = ""
        quality.text = ""
        
    }
    @IBAction func backBtn(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
    }
  
    func getcurrenDAteTime() -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .full
        formatter.timeStyle = .medium
        
        let str = formatter.string(from: Date())
        return str
    }
   

}

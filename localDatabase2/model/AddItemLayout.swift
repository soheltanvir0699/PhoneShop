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
         let date = Util.getDate()
       
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
    
    
    
    @IBAction func saveAction(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
        
        
        let date = Util.getDate()
        
        let price = Int(self.price.text!)
        
          
        let textviewData = ["name": name.text,"quality": quality.text, "model": model.text, "brand": brand.text]
        
        let image = UIImageJPEGRepresentation(imageView.image!, 1)
        
        
        
        localData.shareInstance.save(object: textviewData as! Dictionary, date: date, price: price!, image: image! as NSData)
        
        name.text = ""
        model.text = ""
        brand.text = ""
        self.price.text = ""
        quality.text = ""
        
    }
    @IBAction func backBtn(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
    }
  
  
   

}

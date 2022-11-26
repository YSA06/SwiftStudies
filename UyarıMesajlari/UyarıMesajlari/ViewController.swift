//
//  ViewController.swift
//  UyarıMesajlari
//
//  Created by Yavuz on 26.11.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var password2TextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func signUpTiklandi(_ sender: Any) {
        
        
        if emailTextField.text == ""{
            alertOlustur(titleGirdisi: "Hata", messageGirdisi: "Email Eksik")

            
        }else if passwordTextField.text == "" {
            alertOlustur(titleGirdisi: "Hata", messageGirdisi: "Parola Eksik")
            
            
        }else if password2TextField.text != passwordTextField.text {
           alertOlustur(titleGirdisi: "Hata", messageGirdisi: "Parola Uyusmuyor")
            
        }else{
            alertOlustur(titleGirdisi: "Tebrikler", messageGirdisi: "Kullanıcı Olusturuldu")
            
        }
    }
    
    func alertOlustur (titleGirdisi: String, messageGirdisi: String   ) {
        let uyariMesaji = UIAlertController(title: titleGirdisi, message:messageGirdisi, preferredStyle: UIAlertController.Style.alert)
        
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { UIAlertAction in
            print("ok button tiklandi")
        }
        uyariMesaji.addAction(okButton)
        
        self.present(uyariMesaji, animated: true, completion: nil)
         
    }
    
    
    
    
}


//
//  ViewController.swift
//  UserDefaultProjesi
//
//  Created by Yavuz on 19.11.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var NotTextField: UITextField!
    @IBOutlet weak var zamanTextField: UITextField!
    @IBOutlet weak var noLabel: UILabel!
    @IBOutlet weak var zamanLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let kaydedilenNot=UserDefaults.standard.object(forKey: "not")
        let kaydedilenZaman=UserDefaults.standard.object(forKey:"zaman")
        
        if let gelenNot = kaydedilenNot as? String{
            noLabel.text="Yapılacak İş: \(gelenNot)"
        }
        if let gelenZaman = kaydedilenZaman as? String{
            noLabel.text="Yapılacak Zaman: \(gelenZaman)"
        }
        
        
    }
    
    @IBAction func kaydetTiklandi(_ sender: Any) {
        UserDefaults.standard.set(NotTextField.text!, forKey: "not")
        UserDefaults.standard.set(zamanTextField.text!, forKey: "zaman")
        
        noLabel.text="Yapılacak İş: \(NotTextField.text!)"
        zamanLabel.text="Yapılacak Zaman: \(zamanTextField.text!)"
    }
    
    @IBAction func silTiklandi(_ sender: Any) {
        let kaydedilenNot=UserDefaults.standard.object(forKey: "not")
        let kaydedilenZaman=UserDefaults.standard.object(forKey:"zaman")
        
        
        if (kaydedilenNot as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "not")
            zamanLabel.text = "Yapılacak İş: "
        }

        
        
        
        if (kaydedilenZaman as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "zaman")
            zamanLabel.text = "Yapılacak Zaman: "
        }
    }
    
}


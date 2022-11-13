//
//  ViewController.swift
//  ViewController
//
//  Created by Yavuz on 16.10.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var birinciLabel: UILabel!
    
    @IBOutlet weak var text: UITextField!
    
    var alinanSifre = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
       print("view did load")
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("view did appear")
    }
    override func viewDidDisappear(_ animated: Bool) {
        print("view did disappear")
    }
    override func viewWillAppear(_ animated: Bool) {
        print("view will appear")
        text.text = ""
    }
    override func viewWillDisappear(_ animated: Bool) {
        print("view will disappear")
    }

    @IBAction func kontrol(_ sender: Any) {
        
        alinanSifre = text.text!
        performSegue(withIdentifier: "tolkinciVC", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "tolkinciVC" {
            let destinationVC = segue.destination as! IkinciViewController
            destinationVC.verilenSifre = alinanSifre
        }
        
    }
}

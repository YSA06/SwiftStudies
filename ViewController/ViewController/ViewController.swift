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
        // Do any additional setup after loading the view.
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

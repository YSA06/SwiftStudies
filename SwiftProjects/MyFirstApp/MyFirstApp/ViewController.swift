//
//  ViewController.swift
//  MyFirstApp
//
//  Created by Yavuz on 2.10.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var Label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func BUttonTiklandi(_ sender: Any) {
        Label.text="Yavuz Selim Aygumus"
    }
}



//
//  IkinciViewController.swift
//  ViewController
//
//  Created by Yavuz on 16.10.2022.
//

import UIKit

class IkinciViewController: UIViewController {
    @IBOutlet weak var ikinciLabel: UILabel!
    
    @IBOutlet weak var bulunan: UILabel!
    
    var verilenSifre = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        bulunan.text=verilenSifre

        // Do any additional setup after loading the view.
    }
    


}

//
//  DetailsViewController.swift
//  SuperHeroBook
//
//  Created by Yavuz on 7.12.2022.
//

import UIKit

class DetailsViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    
    var secilenKahramanIsmi = ""
    var secilenKahramanGorsel = ""
        
    override func viewDidLoad() {
        super.viewDidLoad()

        imageView.image = UIImage (named: secilenKahramanGorsel)
        label.text = secilenKahramanIsmi
    }
    

 
}

//
//  ViewController.swift
//  JestAlgilayicilar
//
//  Created by Yavuz on 27.11.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    var beyazTilki = false
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imageView.isUserInteractionEnabled = true
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(gorselDegistir) )
        
        imageView.addGestureRecognizer(gestureRecognizer)
    }
    @objc func gorselDegistir(){
        
        
        if beyazTilki == false {
            imageView.image = UIImage(named: "beyazTilki")
            label.text = "beyazTilki"
            beyazTilki = true
        } else {
            imageView.image = UIImage(named: "tilki")
            label.text = "tilki"
            beyazTilki = false
        }
        
        
    }


}


//
//  ViewController.swift
//  Sayaclar
//
//  Created by Yavuz on 27.11.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    var timer = Timer()
    var kalanZaman = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        kalanZaman = 15
        
        label.text = "Zaman: \(kalanZaman)"
        
    }

    @IBAction func baslatTiklandi(_ sender: Any) {
            
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerF), userInfo: nil, repeats: true
        )
         
    }
    @objc func timerF(){
        label.text = "Zaman: \(kalanZaman)"
        
        kalanZaman = kalanZaman - 1
        
        
        if kalanZaman == 0 {
            label.text="Süre Bittiiii"
            timer.invalidate()
            kalanZaman = 15
        }
    }
    
}


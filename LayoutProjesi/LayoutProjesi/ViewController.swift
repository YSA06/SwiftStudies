//
//  ViewController.swift
//  LayoutProjesi
//
//  Created by Yavuz on 16.10.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        let width = view.frame.size.width
        let height = view.frame.size.height

        
        //Label
        let myLabel = UILabel()
        myLabel.text = "Test Label"
        myLabel.textAlignment = .center
        myLabel.frame = CGRect(x: width * 0.5 - width * 0.8 / 2, y:height * 0.5 - 50, width: width * 0.8, height: 60)
        view.addSubview(myLabel)
        
        
        //Button
        let myButton = UIButton()
        myButton.setTitle("Benim Buttonum",for:UIControl.State.normal)
        myButton.setTitleColor(UIColor.blue, for: UIControl.State.normal)
        myButton.frame = CGRect(x: width * 0.5-100, y: height * 0.65, width: 200, height: 100)
        view.addSubview(myButton)
        
        myButton.addTarget(self, action: #selector(ViewController.benimFonksiyonum), for: UIControl.Event.touchUpInside)
    }
    
    @objc func benimFonksiyonum(){
        print("kullanıcı button'a tıkladı ")
    }


}


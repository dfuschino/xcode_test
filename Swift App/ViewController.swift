//
//  ViewController.swift
//  Swift App
//
//  Created by Derreck.Fuschino on 6/11/15.
//  Copyright (c) 2015 Derreck.Fuschino. All rights reserved.
//
//

import UIKit

class ViewController: UIViewController {

    //declre ivars
    var myFirstLabel:UILabel!
    var iPhoneLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //create labels
        myFirstLabel = UILabel()
        myFirstLabel.text = "My First"
        myFirstLabel.font = UIFont.systemFontOfSize(36)
        myFirstLabel.sizeToFit()
        myFirstLabel.center = CGPoint(x: 200, y: 60)
        view.addSubview(myFirstLabel)
        
        iPhoneLabel = UILabel()
        iPhoneLabel.font = UIFont.boldSystemFontOfSize(48)
        iPhoneLabel.text = "iPhone app"
        iPhoneLabel.sizeToFit()
        iPhoneLabel.center = CGPoint(x: 200, y: 200)
        view.addSubview(iPhoneLabel)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


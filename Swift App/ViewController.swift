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
    var left = 180
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //create labels
        myFirstLabel = UILabel()
        iPhoneLabel = UILabel()
        
        addLabels()
        var tapGesture = UITapGestureRecognizer(target: self, action: Selector("handleTapGesture:"))
        view.addGestureRecognizer(tapGesture)
    }
    func handleTapGesture(tapGesture: UITapGestureRecognizer){
        addLabels()
    }
    
    func addLabels(){
        myFirstLabel.text = "My First"
        myFirstLabel.font = UIFont.systemFontOfSize(36)
        myFirstLabel.sizeToFit()
        myFirstLabel.center = CGPoint(x: left, y: 60)
        view.addSubview(myFirstLabel)
        
        UIView.animateWithDuration(0.5, delay: 0, usingSpringWithDamping: 0.9, initialSpringVelocity: 0, options: nil, animations: {
            self.myFirstLabel.center = CGPoint(x: self.left, y: 225)
            }, completion: nil)
        
        iPhoneLabel.font = UIFont.boldSystemFontOfSize(48)
        iPhoneLabel.text = "iPhone app"
        iPhoneLabel.sizeToFit()
        iPhoneLabel.center = CGPoint(x: left, y: 200)
        iPhoneLabel.alpha = 0
        view.addSubview(iPhoneLabel)
        
        UIView.animateWithDuration(1.2, delay: 1, usingSpringWithDamping: 0.4, initialSpringVelocity: 0, options: nil, animations: {
            self.iPhoneLabel.center = CGPoint(x: self.left, y: 300)
            self.iPhoneLabel.alpha = 1
            }, completion: nil)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


//
//  ViewController.swift
//  dred
//
//  Created by Dema. on 7/6/17.
//  Copyright © 2017 Dema Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Connect the UI to the code
    @IBOutlet weak var drankPick: UIPickerView!
    @IBOutlet weak var peebtn: UIButton!
    @IBOutlet weak var drinkbtn: UIButton!
    @IBOutlet weak var peecntr: UILabel!
    @IBOutlet weak var drinkcntr: UILabel!
    public var peeCount = 0;
    public var drinkCount: Double = 0.0;
    
    var pickerData: [String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        peebtn.addTarget(self, action: #selector(ViewController.buttonClicked(_:)), for: .touchUpInside)
        drinkbtn.addTarget(self, action: #selector(ViewController.buttonClicked(_:)), for: .touchUpInside)
        
        
    }

    //Function to update if a button is clicked!
    @objc func buttonClicked(_ sender: AnyObject?) {
        if sender === peebtn {
            // do something
            peeCount += 1;
            peecntr.text = String(peeCount) + " trips";
        } else if sender === drinkbtn {
            // do something
            drinkCount += 0.6; //increments every 20 ounces
            drinkcntr.text = String(drinkCount) + " L";
        }
    }
    

    
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }


}


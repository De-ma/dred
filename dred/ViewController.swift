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
    
    var pickerData: [String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
//        self.drankPick.delegate = self
//        self.drankPick.dataSource = self
        pickerData = [ "250 mL", "500 mL", "600 mL", "750 mL", "1000 mL"]
        
        peebtn.addTarget(self, action: #selector(ViewController.buttonClicked(_:)), for: .touchUpInside)
        drinkbtn.addTarget(self, action: #selector(ViewController.buttonClicked(_:)), for: .touchUpInside)
        
        
    }

    func buttonClicked(_ sender: AnyObject?) {
        if sender === peebtn {
            // do something
            peeCount += 1;
            peecntr.text = String(peeCount) + " trips";
        } else if sender === drinkbtn {
            // do something
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


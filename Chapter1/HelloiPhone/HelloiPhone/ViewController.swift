//
//  ViewController.swift
//  HelloiPhone
//
//  Created by Segaon_PC on 2017. 10. 30..
//  Copyright © 2017년 CodersHigh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var thisLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func change(_ sender: Any) {
        
        thisLabel.text = "Hello iPhone"
    }


}


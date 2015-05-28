//
//  ViewController.swift
//  UIStrikethroughLabel
//
//  Created by Tiny on 15/5/28.
//  Copyright (c) 2015年 Murphy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet  var lb1:UIStrikethroughLabel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var lb = UIStrikethroughLabel()
        lb.text = "bbbbbbbbb"
        lb.textAlignment = .Center
        lb.frame = CGRectMake(0, 0, 200, 50)
        self.view.addSubview(lb)
        
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}


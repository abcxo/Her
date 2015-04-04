//
//  HViewController.swift
//  Her
//
//  Created by shadowxie on 15/3/11.
//  Copyright (c) 2015年 hippos. All rights reserved.
//

import UIKit

class HViewController : UIViewController, UIGestureRecognizerDelegate {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.interactivePopGestureRecognizer.delegate = self as UIGestureRecognizerDelegate
        if self.navigationItem.leftBarButtonItem != nil && self.navigationItem.leftBarButtonItem?.target == nil {
            self.navigationItem.leftBarButtonItem?.target = self
            self.navigationItem.leftBarButtonItem?.action = Selector("handleNavLeft:")
        }
        if self.navigationItem.rightBarButtonItem != nil && self.navigationItem.rightBarButtonItem?.target == nil {
            self.navigationItem.rightBarButtonItem?.target = self
            self.navigationItem.rightBarButtonItem?.action = Selector("handleNavRight:")
        }
    }
    
    func handleNavLeft(sender:AnyObject){
        
    }
    
    func handleNavRight(sender:AnyObject){
        
    }
}

//
//  HomeViewController.swift
//  Her
//
//  Created by shadow on 15/3/2.
//  Copyright (c) 2015年 hippos. All rights reserved.
//

import UIKit

class HomeViewController : HViewController {
	override func viewDidLoad() {
		super.viewDidLoad()

		// Do any additional setup after loading the view.
		self.performSegueWithIdentifier(NSStringFromClass(PresetViewController), sender : nil);
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}

	/*
	   // MARK: - Navigation

	   // In a storyboard-based application, you will often want to do a little preparation before navigation
	   override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
	    // Get the new view controller using segue.destinationViewController.
	    // Pass the selected object to the new view controller.
	   }
	 */
    
    
    override func handleNavRight(sender: AnyObject) {
        appDelegate.rootViewController?.showSlide(true, isAnimated: true)
        
    }
    
	@IBAction func unwindSegue(segue : UIStoryboardSegue) {
	}
}

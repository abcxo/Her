//
//  SettingViewController.swift
//  Her
//
//  Created by shadow on 15/3/2.
//  Copyright (c) 2015年 hippos. All rights reserved.
//

import UIKit

class SettingViewController : HTableViewController {
	override func viewDidLoad() {
		super.viewDidLoad()
		var view = UIView(frame : CGRectZero)
		    view.backgroundColor = UIColor.clearColor()
		        self.tableView.tableFooterView = view
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


	@IBAction func unwindSegue(segue : UIStoryboardSegue) {
	}
}

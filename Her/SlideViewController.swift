//
//  SlideViewController.swift
//  Her
//
//  Created by shadow on 15/3/2.
//  Copyright (c) 2015年 hippos. All rights reserved.
//

import UIKit




class SlideViewController : HViewController,UITableViewDataSource,UITableViewDelegate{

    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var slideView: UIView!
    
    override func viewDidLoad() {
		super.viewDidLoad()

		// Do any additional setup after loading the view.
        

	}
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1;
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell:SlideTableViewCell = tableView.dequeueReusableCellWithIdentifier(NSStringFromClass(SlideTableViewCell)) as! SlideTableViewCell
        return cell
    }
    
    

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
}

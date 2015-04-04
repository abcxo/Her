//
//  HUtility.swift
//  Her
//
//  Created by shadowxie on 15/3/9.
//  Copyright (c) 2015年 hippos. All rights reserved.
//

import UIKit


let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
class HUtility: NSObject {
   
}




let fontSizeDefault_UI: CGFloat = 17.0
let fontSizeTitle_UI: CGFloat = 19.0
let screenHeight_UI: CGFloat = UIScreen.mainScreen().bounds.height
let screenWidth_UI: CGFloat = UIScreen.mainScreen().bounds.width
let navBarHeight_UI: CGFloat = 44.0
let statusBarHeight_UI: CGFloat = 20
let pxHeight_UI: CGFloat = 1/UIScreen.mainScreen().scale
let colorGrayLight_UI: UIColor = UIColor(rgba: "#eeeeee")



let storyboardDefault_UI:String = "Main"



class HUtilityUI: NSObject {
    class func wawaFont(size:CGFloat)->UIFont{
        var font = UIFont(name: "DFWaWaSC-W5", size: size)
        if let font=font{
            return font;
        }else{
            return UIFont.systemFontOfSize(size)
        }
    }
    
    
    
}
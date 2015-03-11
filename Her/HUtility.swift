//
//  HUtility.swift
//  Her
//
//  Created by shadowxie on 15/3/9.
//  Copyright (c) 2015年 hippos. All rights reserved.
//

import UIKit

class HUtility: NSObject {
   
}




let fontSizeDefault_UI: CGFloat = 17.0
let screenHeight_UI: CGFloat = UIScreen.mainScreen().bounds.height
let screenWidth_UI: CGFloat = UIScreen.mainScreen().bounds.width
let navBarHeight_UI: CGFloat = 44.0
let statusBarHeight_UI: CGFloat = 20
let pxHeight_UI: CGFloat = 1/UIScreen.mainScreen().scale
let colorGrayLight_UI: UIColor = UIColor(rgba: "#eeeeee")


class HUtilityUI: NSObject {
    class func wawaFont()->UIFont{
        var font = UIFont(name: "DFWaWaSC-W5", size: fontSizeDefault_UI)
        if let font=font{
            return font;
            UIScreen.mainScreen().scale
        }else{
            return UIFont.systemFontOfSize(fontSizeDefault_UI)
        }
    }
    
}
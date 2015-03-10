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


class HUtilityUI: NSObject {
    class func wawaFont()->UIFont{
        var font = UIFont(name: "DFWaWaSC-W5", size: fontSizeDefault_UI)
        if let font=font{
            return font;
        }else{
            return UIFont.systemFontOfSize(fontSizeDefault_UI)
        }
    }
    
}
//
//  HNavigationBar.swift
//  Her
//
//  Created by shadowxie on 15/3/8.
//  Copyright (c) 2015年 hippos. All rights reserved.
//

import UIKit

@IBDesignable
class HNavigationBar: UINavigationBar {

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

    @IBInspectable
    var transparent :Bool{
        didSet{
            var bgView = self.subviews.first as! UIView
            bgView.hidden = self.transparent
            if self.transparent == false {
                self.setBackgroundImage(UIImage.image(UIColor.whiteColor(), size: CGSizeMake(screenWidth_UI, navBarHeight_UI+statusBarHeight_UI)), forBarMetrics: UIBarMetrics.Default)
                self.shadowImage = UIImage.image(colorGrayLight_UI, size: CGSizeMake(screenWidth_UI, pxHeight_UI))
            }
        }
    }
    required init(coder aDecoder: NSCoder) {
        
        self.transparent = false
        super.init(coder: aDecoder)
        self.initUI()
    }
    func initUI(){
        
        //设置字体
        var font = UIFont(name: "DFWaWaSC-W5", size: fontSizeDefault_UI)
        if let font=font {
            self.titleTextAttributes = [NSFontAttributeName : font]
        }
        
        
    }

}


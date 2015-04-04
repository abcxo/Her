//
//  HImage.swift
//  Her
//
//  Created by shadowxie on 15/3/10.
//  Copyright (c) 2015年 hippos. All rights reserved.
//

import UIKit
extension UIImage {
	class func image(color : UIColor, size : CGSize)->UIImage {
		var rect = CGRectMake(0, 0, size.width, size.height)
		    UIGraphicsBeginImageContextWithOptions(size, false, 0)
		    color.setFill()
		    UIRectFill(rect)
		    var image : UIImage = UIGraphicsGetImageFromCurrentImageContext()
		        UIGraphicsEndImageContext()
		        return image
	}
}

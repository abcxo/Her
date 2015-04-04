//
//  HBarButtonItem.swift
//  Her
//
//  Created by shadowxie on 15/3/9.
//  Copyright (c) 2015年 hippos. All rights reserved.
//

import UIKit
@IBDesignable
class HBarButtonItem : UIBarButtonItem {
	required init(coder aDecoder : NSCoder) {
		super.init(coder : aDecoder)
		self.image = self.image!.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
	}
}

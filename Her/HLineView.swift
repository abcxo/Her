//
//  HLineView.swift
//  Her
//
//  Created by shadowxie on 15/3/10.
//  Copyright (c) 2015年 hippos. All rights reserved.
//

import UIKit

@IBDesignable
class HLineView : UIView {
	override init() {
		super.init()
		self.setTranslatesAutoresizingMaskIntoConstraints(false)
        if self.backgroundColor == nil {
            self.backgroundColor = colorGrayLight_UI
        }
	}

	override init(frame : CGRect) {
		super.init(frame : frame)
		self.setTranslatesAutoresizingMaskIntoConstraints(false)
        if self.backgroundColor == nil {
            self.backgroundColor = colorGrayLight_UI
        }
	}

	required init(coder aDecoder : NSCoder) {
		super.init(coder : aDecoder)
		self.setTranslatesAutoresizingMaskIntoConstraints(false)
        if self.backgroundColor == nil {
            self.backgroundColor = colorGrayLight_UI
        }
	}

	override func layoutSubviews() {
		super.layoutSubviews()
		self.setHeight(height : pxHeight_UI)
	}
}

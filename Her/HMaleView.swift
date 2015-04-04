//
//  HMaleView.swift
//  Her
//
//  Created by shadowxie on 15/3/9.
//  Copyright (c) 2015年 hippos. All rights reserved.
//

import UIKit

@IBDesignable
class HMaleView : UIButton {
	/*
	   // Only override drawRect: if you perform custom drawing.
	   // An empty implementation adversely affects performance during animation.
	   override func drawRect(rect: CGRect) {
	    // Drawing code
	   }
	 */
	@IBInspectable
	var lineWidth : CGFloat


	var triangleLayer : CAShapeLayer




	required init(coder aDecoder : NSCoder) {
		self.triangleLayer = CAShapeLayer()
		    self.lineWidth = 1
		        super.init(coder : aDecoder)
	}

	override init(frame : CGRect) {
		self.triangleLayer = CAShapeLayer()
		    self.lineWidth = 1
		        super.init(frame : frame)
	}

	override func layoutSubviews() {
		super.layoutSubviews()

		self.triangleLayer.removeFromSuperlayer()
		var trianglePath = UIBezierPath()
		    trianglePath.moveToPoint(CGPointMake(self.bounds.width / 2, 0))
		    trianglePath.addLineToPoint(CGPointMake(0, self.bounds.height))
		    trianglePath.addLineToPoint(CGPointMake(self.bounds.width, self.bounds.height))
		    trianglePath.closePath()
		    self.triangleLayer.path = trianglePath.CGPath
		        self.triangleLayer.lineWidth = self.lineWidth
		            self.triangleLayer.fillColor = UIColor.clearColor().CGColor
		                self.triangleLayer.strokeColor = self.tintColor!.CGColor
		                    self.layer.addSublayer(self.triangleLayer)
	}
}

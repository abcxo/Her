//
//  HFemaleView.swift
//  Her
//
//  Created by shadowxie on 15/3/9.
//  Copyright (c) 2015年 hippos. All rights reserved.
//

import UIKit

@IBDesignable
class HFemaleView: UIButton {

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
    @IBInspectable
    var lineWidth :CGFloat
    
    
    var circleLayer: CAShapeLayer
    
    
    
    
    
    required init(coder aDecoder: NSCoder) {
        self.circleLayer = CAShapeLayer()
        self.lineWidth = 1
        super.init(coder: aDecoder)
        
    }
    
    override init(frame: CGRect) {
        self.circleLayer = CAShapeLayer()
        self.lineWidth = 1
        super.init(frame: frame)
        
    }
    
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.circleLayer.removeFromSuperlayer()
        var ovalPath = UIBezierPath(ovalInRect: self.bounds)
        self.circleLayer.path = ovalPath.CGPath
        self.circleLayer.lineWidth = self.lineWidth
        self.circleLayer.fillColor = UIColor.clearColor().CGColor
        self.circleLayer.strokeColor = self.tintColor!.CGColor
        self.layer.addSublayer(self.circleLayer)
        
        
        
    }

}

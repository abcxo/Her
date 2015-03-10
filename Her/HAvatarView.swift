//
//  HAvatarView.swift
//  Her
//
//  Created by shadowxie on 15/3/9.
//  Copyright (c) 2015年 hippos. All rights reserved.
//

import UIKit




@IBDesignable
class HAvatarView: UIView {

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
    @IBInspectable
    var lineWidth :CGFloat
    @IBInspectable
    var inArc :Bool
    @IBInspectable
    var bgColor :UIColor?
    
    var circleLayer: CAShapeLayer
    var arcLayer: CAShapeLayer
    var bgLayer: CAShapeLayer
    
    
    
    
    required init(coder aDecoder: NSCoder) {
        self.circleLayer = CAShapeLayer()
        self.arcLayer = CAShapeLayer()
        self.bgLayer = CAShapeLayer()
        self.inArc = false
        self.lineWidth = 1
        self.bgColor=nil
        super.init(coder: aDecoder)


    }
    
    override init(frame: CGRect) {
        self.circleLayer = CAShapeLayer()
        self.arcLayer = CAShapeLayer()
        self.bgLayer = CAShapeLayer()
        self.inArc = false
        self.lineWidth = 1
        self.bgColor=nil
        super.init(frame: frame)

    }
    
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        var rect = self.bounds
        
        if self.bgColor != nil{
            self.bgLayer.removeFromSuperlayer()
            var ovalPathBg = UIBezierPath(ovalInRect: rect)
            self.bgLayer.path = ovalPathBg.CGPath
            self.bgLayer.lineWidth = self.lineWidth
            self.bgLayer.fillColor = bgColor?.CGColor
            self.bgLayer.strokeColor = UIColor.clearColor().CGColor
            self.layer.addSublayer(self.bgLayer)
            var offset = self.bounds.width*0.1
            rect = CGRectMake(offset, offset, self.bounds.width-2*offset, self.bounds.height-2*offset)

        }
        
        
        
        
        self.circleLayer.removeFromSuperlayer()
        var ovalPath = UIBezierPath(ovalInRect: rect)
        self.circleLayer.path = ovalPath.CGPath
        self.circleLayer.lineWidth = self.lineWidth
        self.circleLayer.fillColor = UIColor.clearColor().CGColor
        self.circleLayer.strokeColor = self.tintColor.CGColor
        self.layer.addSublayer(self.circleLayer)
        
        if self.inArc == true{
            self.arcLayer.removeFromSuperlayer()
            var arcPath = UIBezierPath()
            arcPath.addArcWithCenter(CGPointMake(rect.midX, rect.midY), radius: rect.width*0.4, startAngle: -75 * CGFloat(M_PI)/180, endAngle: -15 * CGFloat(M_PI)/180, clockwise: true)
            self.arcLayer.path = arcPath.CGPath
            self.arcLayer.lineWidth = self.lineWidth
            self.arcLayer.fillColor = UIColor.clearColor().CGColor
            self.arcLayer.strokeColor = self.tintColor.CGColor
            self.layer.addSublayer(self.arcLayer)

        }
        
        
        
    }

}



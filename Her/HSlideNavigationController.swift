//
//  HSlideNavigationController.swift
//  Her
//
//  Created by shadowxie on 15/3/15.
//  Copyright (c) 2015年 hippos. All rights reserved.
//

import UIKit

class HSlideNavigationController: HNavigationController {
    

    private var _tapRecognizer:UITapGestureRecognizer?
    private var _panRecognizer:UIPanGestureRecognizer?
    private var _minX:CGFloat?
    
    
    private var _slideViewController:SlideViewController?
    var slideViewController:SlideViewController{
        get{
            if _slideViewController == nil {
                _slideViewController = UIStoryboard(name : storyboardDefault_UI, bundle : nil).instantiateViewControllerWithIdentifier(NSStringFromClass(SlideViewController)) as? SlideViewController
                _slideViewController?.view.setTranslatesAutoresizingMaskIntoConstraints(false)
                
                self.addChildViewController(_slideViewController!)
                self.view.addSubview(_slideViewController!.view)
                self.view.addConstraint(NSLayoutConstraint(item: self.view, attribute: NSLayoutAttribute.Bottom, relatedBy: NSLayoutRelation.Equal, toItem: _slideViewController?.view, attribute: NSLayoutAttribute.Bottom, multiplier: 1, constant: 0))
                self.view.addConstraint(NSLayoutConstraint(item: self.view, attribute: NSLayoutAttribute.Top, relatedBy: NSLayoutRelation.Equal, toItem: _slideViewController?.view, attribute: NSLayoutAttribute.Top, multiplier: 1, constant: 0))
                self.view.addConstraint(NSLayoutConstraint(item: self.view, attribute: NSLayoutAttribute.Width, relatedBy: NSLayoutRelation.Equal, toItem: _slideViewController?.view, attribute: NSLayoutAttribute.Width, multiplier: 1, constant: 0))
                self.view.addConstraint(NSLayoutConstraint(item: self.view, attribute: NSLayoutAttribute.Trailing, relatedBy: NSLayoutRelation.Equal, toItem: _slideViewController?.view, attribute: NSLayoutAttribute.Leading, multiplier: 1, constant: 0))
                _slideViewController?.didMoveToParentViewController(self)
                _minX = -_slideViewController!.view.frame.width*2/3
                
            }
            return _slideViewController!
        }
    }
    
    
    
    
    
    
    required override init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        _tapRecognizer = UITapGestureRecognizer(target: self, action: Selector("handleTap:"))
        _panRecognizer = UIPanGestureRecognizer(target: self, action: Selector("handlePan:"))
        self.view.addGestureRecognizer(_tapRecognizer!)
        self.view.addGestureRecognizer(_panRecognizer!)
        
    }
    
    

    func handleTap(sender:UITapGestureRecognizer){
        self.showSlide(false, isAnimated: true)
    }



    func handlePan(sender:UIPanGestureRecognizer){
        if sender.state == UIGestureRecognizerState.Began{
            sender.setTranslation(CGPointMake(self.slideViewController.view.transform.tx, 0), inView: self.view)
        }
        else if sender.state == UIGestureRecognizerState.Changed {
            var translation = sender.translationInView(self.view)
            var radio:CGFloat = 1
            if translation.x < _minX {
                radio = 0.6 - (translation.x - _minX!)/translation.x
                translation.x = _minX! + (translation.x - _minX!)*radio
            }
            self.slideViewController.view.transform = CGAffineTransformMakeTranslation(translation.x, 0)

        }
        else if sender.state == UIGestureRecognizerState.Ended || sender.state == UIGestureRecognizerState.Cancelled {
            var verlocity = sender.velocityInView(self.view)
            self.showSlide(verlocity.x<0, isAnimated: true)
        }
    }

    
    func showSlide(isShow:Bool,isAnimated:Bool){
        var duration:CGFloat = isAnimated ? 0.3:0
        UIView.animateWithDuration(Double(duration), delay: 0, options: UIViewAnimationOptions.CurveEaseOut, animations: { () -> Void in
            self.slideViewController.view.transform = CGAffineTransformMakeTranslation(isShow ? self._minX!: 0, 0)
        }) { (Bool) -> Void in
            
        }
    }
}

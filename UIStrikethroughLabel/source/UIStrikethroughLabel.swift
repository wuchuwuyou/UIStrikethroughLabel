//
//  UIStrikethroughLabel.swift
//  UIStrikethroughLabel
//
//  Created by Tiny on 15/5/28.
//  Copyright (c) 2015年 Murphy. All rights reserved.
//

import UIKit

class UIStrikethroughLabel: UILabel {

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
    //TODO:多行分割线
    var strikeThroughColor:UIColor?
    
    var defaultSTColor = UIColor.blackColor()

    override func drawTextInRect(rect: CGRect) {
        super.drawTextInRect(rect)
        let t:NSString = self.text!
        let textSize = t.sizeWithAttributes([NSFontAttributeName: self.font])
        
        var strikeWidth = textSize.width
        
        var lineRect:CGRect
        
        switch self.textAlignment{
        case NSTextAlignment.Right:
            lineRect = CGRectMake(rect.size.width - strikeWidth, rect.size.height / 2, strikeWidth, 1)
        case NSTextAlignment.Center:
            lineRect = CGRectMake(rect.size.width / 2 - strikeWidth / 2 , rect.size.height / 2, strikeWidth, 1)
        default:
            lineRect = CGRectMake(0, rect.size.height / 2, strikeWidth, 1)
            
        }
        
        let context = UIGraphicsGetCurrentContext()
        
        if strikeThroughColor == nil {
            strikeThroughColor = defaultSTColor
        }
        
        CGContextSetFillColorWithColor(context, self.strikeThroughColor?.CGColor)
        CGContextFillRect(context, lineRect)

    }
    
    
//    if (self.strikeThroughEnabled)
//    {
//    CGContextRef context = UIGraphicsGetCurrentContext();
//    
//    CGContextSetFillColorWithColor(context, [self strikeThroughColor].CGColor);
//    
//    CGContextFillRect(context, lineRect);
//    }

}

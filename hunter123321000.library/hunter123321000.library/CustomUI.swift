//
//  CustomUI.swift
//  hunter123321000library
//
//  Created by HungLi Chen on 2017/6/13.
//  Copyright © 2017年 hunter123321000. All rights reserved.
//

import UIKit
@IBDesignable public class CustomUI: UIView {
    
    @IBInspectable var borderColor:UIColor = UIColor.clear {
        didSet {
            layer.borderColor = borderColor.cgColor
        }
    }
    @IBInspectable var borderWidth:CGFloat = 0 {
        didSet{
            layer.borderWidth = borderWidth
            
        }
    }
    @IBInspectable var cornerRadius:CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
            
        }
    }
}

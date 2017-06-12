//
//  PaddingLabel.swift
//  TableView_byswift3
//
//  Created by hunterchen on 2017/1/24.
//  Copyright © 2017年 hunterchen. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable public class PaddingLabel: UILabel {
    
    @IBInspectable public var topInset: CGFloat = 5.0
    @IBInspectable public var bottomInset: CGFloat = 5.0
    @IBInspectable public var leftInset: CGFloat = 5.0
    @IBInspectable public var rightInset: CGFloat = 5.0
    
    override public func drawText(in rect: CGRect) {
        let insets = UIEdgeInsets(top: topInset, left: leftInset, bottom: bottomInset, right: rightInset)
        super.drawText(in: UIEdgeInsetsInsetRect(rect, insets))
    }
    
    override public var intrinsicContentSize: CGSize {
        get {
            var contentSize = super.intrinsicContentSize
            contentSize.height += topInset + bottomInset
            contentSize.width += leftInset + rightInset
            return contentSize
        }
    }
}

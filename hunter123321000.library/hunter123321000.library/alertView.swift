//
//  alertView.swift
//  hunter123321000library
//
//  Created by RD on 2017/6/13.
//  Copyright © 2017年 hunter123321000. All rights reserved.
//

import UIKit

public class alertView: UIViewController {

    public func showDialog(title:String,msg:String,btnTitle:String) -> UIAlertController {
        
        let alertController = UIAlertController(title: title, message: msg, preferredStyle: .alert)
        let defaultAction = UIAlertAction(title: btnTitle, style: .default, handler: nil)
        alertController.addAction(defaultAction)

        return alertController;
    }
    
    public func showToast(msg : String) -> UILabel {
        
        let toastLabel = UILabel(frame: CGRect(x: super.view.frame.size.width/2 - 75, y: self.view.frame.size.height-100, width: 150, height: 35))
        toastLabel.backgroundColor = UIColor.black.withAlphaComponent(0.6)
        toastLabel.textColor = UIColor.white
        toastLabel.textAlignment = .center;
        toastLabel.font = UIFont(name: "Montserrat-Light", size: 12.0)
        toastLabel.text = msg
        toastLabel.alpha = 1.0
        toastLabel.layer.cornerRadius = 10;
        toastLabel.clipsToBounds  =  true
//        self.view.addSubview(toastLabel)
        UIView.animate(withDuration: 4.0, delay: 0.1, options: .curveEaseOut, animations: {
            toastLabel.alpha = 0.0
        }, completion: {(isCompleted) in
            toastLabel.removeFromSuperview()
        })
        
        return toastLabel;
    }
}

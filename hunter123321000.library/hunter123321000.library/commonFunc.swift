//
//  commomFunc.swift
//  hunter123321000library
//
//  Created by HungLi Chen on 2017/6/11.
//  Copyright © 2017年 hunter123321000. All rights reserved.
//

import UIKit

public class commonFunc: NSObject {
    
    public func isSameString(str1:String,_ strs:String...) -> Bool{
        var tmp:Int = 0;
        for str in strs{
            if(str1 == str){
                tmp += 1;
                if(tmp == strs.count){
                 return true
                }
            }
            else{
                return false
            }
        }
        return false
    }
    
    public func isSameInput(any1:Any,_ anys:Any...) -> Bool{
        var tmp:Int = 0;
        for any in anys{
            let tmpStr = String(describing: any1)
            let tmpStr2 = String(describing: any)
            debugPrint("tmpStr="+tmpStr+"   tmpStr2="+tmpStr2);
            if(tmpStr == tmpStr2){
                tmp += 1;
                if(tmp == anys.count){
                    return true
                }
            }
            else{
                return false
            }
        }
        return false
    }
    
    public func isValidEmail(enteredEmail:String) -> Bool {
        
        let emailFormat = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPredicate = NSPredicate(format:"SELF MATCHES %@", emailFormat)//SELF MATCHES is keyword
        return emailPredicate.evaluate(with: enteredEmail)
    }
    
    public func isValidPwd(pwd:String,maxLen:Int) -> Bool {
        /*
         ^(?=.*[A-Z].*[A-Z])(?=.*[!@#$&*])(?=.*[0-9].*[0-9])(?=.*[a-z].*[a-z].*[a-z]).{8}$
         
         ^                         Start anchor
         (?=.*[A-Z].*[A-Z])        Ensure string has two uppercase letters.
         (?=.*[!@#$&*])            Ensure string has one special case letter.
         (?=.*[0-9].*[0-9])        Ensure string has two digits.
         (?=.*[a-z].*[a-z].*[a-z]) Ensure string has three lowercase letters.
         .{8}                      Ensure string is of length 8.
         $                         End anchor.
         */
        
        let RegEx = "^(?=.*[A-Z])(?=.*[!@#$&*])(?=.*[0-9])(?=.*[a-z]).{8,"+String(maxLen)+"}$"
        let pwdPredicate = NSPredicate(format:"SELF MATCHES %@", RegEx)
        return pwdPredicate.evaluate(with: pwd)
    }

}

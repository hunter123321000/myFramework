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

}

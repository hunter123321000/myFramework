//
//  opeUserDefaults.swift
//  hunter123321000library
//
//  Created by RD on 2017/6/20.
//  Copyright © 2017年 hunter123321000. All rights reserved.
//

import UIKit

public class opeUserDefaults: NSObject {
    
    /* 使用NSUserDefaults對普通數據對象儲存 */
    /**
       儲存
          - parameter key: key
          - parameter value: value
     */
    public func set(key:String, value:AnyObject?){
        if value == nil {
            UserDefaults.standard.removeObject(forKey: key)
        }
        else{
            UserDefaults.standard.set(value, forKey: key)
            UserDefaults.standard.synchronize()
        }
    }
    
    /**
          通過對應的key移除儲存
          
          - parameter key: 對應key
          */
    public func remove(key:String?){
        if key != nil {
            UserDefaults.standard.removeObject(forKey: key!)
            UserDefaults.standard.synchronize()
        }
    }
    
    /**
          通過key找到儲存的value
          
          - parameter key: key
          
          - returns: AnyObject
     */
    public func get(key:String)->AnyObject?{
        return UserDefaults.standard.value(forKey: key) as AnyObject
    }}

//
//  dataConvert.swift
//  hunter123321000library
//
//  Created by HungLi Chen on 2017/6/11.
//  Copyright © 2017年 hunter123321000. All rights reserved.
//

import UIKit

public class dataConvert: NSObject {

    public func hexStringtoAscii(_ hexString : String) -> String {
        
        let pattern = "(0x)?([0-9a-f]{2})"
        let regex = try! NSRegularExpression(pattern: pattern, options: .caseInsensitive)
        let nsString = hexString as NSString
        let matches = regex.matches(in: hexString, options: [], range: NSMakeRange(0, nsString.length))
        let characters = matches.map {
            Character(UnicodeScalar(UInt32(nsString.substring(with: $0.rangeAt(2)), radix: 16)!)!)
        }
        return String(characters)
    }
    

    // the completion closure signature is (String) -> ()
    public func getDataFromUrl(sMainUrl:String, completion:@escaping (String) -> ()) {
        if let url = URL(string: sMainUrl) {
            let request = URLRequest(url: url)
            let task = URLSession.shared.dataTask(with: request, completionHandler: { (data, response, error) in
                if let data = data, let jsonString = String(data: data, encoding: String.Encoding.utf8) , error == nil {
                    completion(jsonString) }
                else {
                    print("error")
                }
            })
            task.resume()
        }
    }
    
    
}

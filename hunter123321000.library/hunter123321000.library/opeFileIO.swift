//
//  opeFileIO.swift
//  hunter123321000library
//
//  Created by RD on 2017/6/20.
//  Copyright © 2017年 hunter123321000. All rights reserved.
//

import UIKit

public class opeFileIO: NSObject {
    /**
          創建文件
     
          - parameter name: 文件名
          - parameter fileBaseUrl: url
     
          - returns: 文件路徑
          */
    public func creatFile(name:String, fileBaseUrl:NSURL) -> String{
        let manager = FileManager.default
        let file = fileBaseUrl.appendingPathComponent(name)
        
        let exist = manager.fileExists(atPath: file!.path)
        if !exist {
            let createFilesSuccess = manager.createFile(atPath: file!.path, contents: nil, attributes: nil)
            print("文件創建結果: \\(createFilesSuccess)")
        }
        return String(describing: file)
    }
    
/**
          讀取文件
     
          - parameter name: 文件名
          - parameter fileBaseUrl: url
     
          - returns: 讀取數據
          */
    public func readFlie(name:String , fileBaseUrl:NSURL) ->NSString{
        let file = fileBaseUrl.appendingPathComponent(name)
        // print(file)
        let readHandler = try! FileHandle(forReadingFrom:file!)
        let data = readHandler.readDataToEndOfFile()
        let readString = NSString(data: data, encoding: String.Encoding.utf8.rawValue)
        return readString!
    }
    
    
    public func savePlistFiles(fileName:String,url:NSURL,strArray:[String]){
        // 儲存的沙盒路徑
        let manager = FileManager.default
        let urlForCatch = manager.urls(for: FileManager.SearchPathDirectory.cachesDirectory, in: FileManager.SearchPathDomainMask.userDomainMask)
        let url = urlForCatch.first! as NSURL
        let fileName = "RookieSon.plist"
        // 建立文件
        let filesPath = creatFile(name: fileName, fileBaseUrl: url)
        // 儲存數據
        let saveDataInfo = NSMutableArray()
        for str in strArray{
            saveDataInfo.add(str)
        }
//        saveDataInfo.add("123")
//        saveDataInfo.add("456")
//        saveDataInfo.add("789")
        //        print(saveDataInfo)
        // 寫檔
        saveDataInfo.write(to: NSURL(string: filesPath)! as URL, atomically: true)
        
        // 讀檔
        let readDataInfo = readFlie(name: fileName, fileBaseUrl: url)
        print(readDataInfo)
    }
}

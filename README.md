# myFramework
develop framework by swift
## Useing with Carthage
 github "hunter123321000/myFramework" ~> 1.0

---
### 字串及輸入處理

* commonFunc().isSameString(str1: "123", "123","123","123","123") //多字串比較，可省略第二個參數之後的參數名稱
   
* commonFunc().isSameInput(any1: 123,"123",123,1234,"123")//多筆輸入比較
   
* commonFunc().isValidPwd(pwd: "a123#45A678",maxLen:20) //密碼正規化
   
* commonFunc().isValidEmail(pwd: "a123#45A678",maxLen:20) //email正規化

* commonFunc().getNow(setDateFormat: "yyyy-MM-dd hh:mm：ss")//取得時間、日期
---
### Alert運用

* alertView().showDialog(title:String,msg:String,btnTitle:String)
   
* alertView().showToast(msg : String)
---
### 資料轉換運用

* dataConvert().hexStringtoAscii(_ hexString : String)// hex to String
---
### 指紋驗證(逃逸閉包 > 取得驗證回傳值)

* 方式一：touchIDVerify().isTouchID(succeed: {
            print("解鎖成功")
        }) { (error) in
            print(error)
        };
* 方式二：(包含回傳錯誤訊息)
touchIDVerify().touchIdWithHand(fallBackTitle: "", succeed: {
            print("解鎖成功")
        }) { (error) in
            print(error)
        }
---
### 資料IO

* UserDefaults: 
1. opeUserDefaults().set(key:String, value:AnyObject?)
2. opeUserDefaults().remove(key:String?)
3. opeUserDefaults().get(key:String)->AnyObject?

* PlistFile
1. opeFileIO.savePlistFiles(fileName:String,url:NSURL,strArray:[String])
2. opeFileIO.readFlie(name:String , fileBaseUrl:NSURL) ->NSString
3. opeFileIO.creatFile(name:String, fileBaseUrl:NSURL) -> String

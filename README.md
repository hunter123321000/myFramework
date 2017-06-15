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
---
### Alert運用

* alertView().showDialog(title:String,msg:String,btnTitle:String)
   
* alertView().showToast(msg : String)
---
### 資料轉換運用

* dataConvert().hexStringtoAscii(_ hexString : String)// hex to String

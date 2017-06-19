//
//  touchIDVerify.swift
//  hunter123321000library
//
//  Created by HungLi Chen on 2017/6/16.
//  Copyright © 2017年 hunter123321000. All rights reserved.
//

import UIKit
import LocalAuthentication

public class touchIDVerify: NSObject {

    public func isTouchID (succeed: @escaping () -> (),failed: @escaping (_ message: String) -> ()) {
        let context = LAContext()
        var error: NSError?
//        var b_verify:Bool = false
//        var str_error = ""
        
        if (context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error)) {
            // 開始進入識別狀態，以閉包形式返回結果。閉包的 success 是布爾值，代表識別成功與否。error 為錯誤信息。
            OperationQueue.main.addOperation({
            context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: "請用指紋解鎖", reply: {success, error  in
                    if (success) {
                        // 成功之后的邏輯， 通常使用多線程來實現跳轉邏輯。
                        succeed()
                    }else {
                        if let error = error as NSError? {
                            // 獲取錯誤信息
                            let message = self.errorMessageForLAErrorCode(errorCode: error.code)
//                            str_error = message+String(error.code)
                            print(message)
                            failed(message)
                        }
                    }
                }
            )
            })
        }
    }
    
    public func errorMessageForLAErrorCode(errorCode: Int) -> String {
        var message = "";
        
        switch errorCode {
        case LAError.appCancel.rawValue:
            message = "Authentication was cancelled by application";
            
        case LAError.authenticationFailed.rawValue:
            message = "The user failed to provide valid credentials";
            
        case LAError.invalidContext.rawValue:
            message = "The context is invalid";
            
        case LAError.passcodeNotSet.rawValue:
            message = "Passcode is not set on the device";
            
        case LAError.systemCancel.rawValue:
            message = "Authentication was cancelled by the system";
            
        case LAError.touchIDLockout.rawValue:
            message = "Too many failed attempts.";
            
        case LAError.touchIDNotAvailable.rawValue:
            message = "TouchID is not available on the device";
            //    showPassWordInput()
            
        case LAError.userCancel.rawValue:
            message = "The user did cancel";
            
        case LAError.userFallback.rawValue:
            message = "The user chose to use the fallback";
            
        default:
            message = "Did not find error code on LAError object";
        }
        return message
    }
    
    public func touchIdWithHand(fallBackTitle: String?, succeed: @escaping () -> (), failed: @escaping (_ message: String) -> ()) {
        
        guard self.IsSupportTouchID else {
            print("設備不支持TouchID 或未開啟TouchID ")
            return
        }
        
        let context = LAContext()
        context.localizedFallbackTitle = fallBackTitle
        let reason = "驗證指紋"
        context.evaluatePolicy(LAPolicy.deviceOwnerAuthenticationWithBiometrics, localizedReason: reason, reply: { (isSuccess, err) in
            
            OperationQueue.main.addOperation({
                
                guard isSuccess == true, err == nil else {
                    let laerror = err as! LAError
                    let message = self.errorMessageForLAErrorCode(errorCode: laerror.errorCode)
                    failed(message)
                    return
                }
                succeed()
            })
        })
    }
    
    /// 檢查手機 TouchID 功能是否開啟或可以使用
    public var IsSupportTouchID: Bool {
        get {
            let context = LAContext()
            var error :NSError?
            let isSupport = context.canEvaluatePolicy(LAPolicy.deviceOwnerAuthenticationWithBiometrics, error: &error)
            return isSupport
        }
    }
}

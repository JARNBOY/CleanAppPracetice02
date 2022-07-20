//
//  AppDirector.swift
//  CleanAppPracetice02
//
//  Created by Papon Supamongkonchai on 20/7/2565 BE.
//

import UIKit
import Foundation

class AppDirector: NSObject {
    
    static var shared: AppDirector!
    static func sharedInstance() -> AppDirector{
        if let sharedInstance = AppDirector.shared{
            return sharedInstance
        }
        else{
            AppDirector.shared = AppDirector()
            return AppDirector.shared!
        }
    }
    
    static var rootNavigationController : RootNavigationController{
        get{
            return RootNavigationController.sharedInstance()
        }
    }
    
    static var rootViewController : RootViewController{
        get{
            return RootViewController.sharedInstance()
        }
    }
    
}

//
//  AppGlobal.swift
//  CleanAppPracetice02
//
//  Created by Papon Supamongkonchai on 20/7/2565 BE.
//

import Foundation
import UIKit

class AppGlobal: NSObject {
    
    static var shared : AppGlobal!
    static func sharedInstance() -> AppGlobal {
        if let sharedInstance = AppGlobal.shared {
            return sharedInstance
        }else{
            AppGlobal.shared = AppGlobal()
            return AppGlobal.shared!
        }
    }
    
    var activeDrawingMenu = ""
}

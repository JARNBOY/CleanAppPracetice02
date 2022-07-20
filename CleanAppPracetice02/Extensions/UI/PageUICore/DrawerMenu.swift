//
//  DrawerMenu.swift
//  StockShirt
//
//  Created by Papon Supamongkonchai on 20/2/2564 BE.
//

import Foundation

enum DrawerMenuIdentifier: String {
    case Home = "Home"
    case News = "News"
    case Activity = "Activity"
    case Setting = "Setting"
    //=====
    case DebugAPI = "DebugAPI"
    case Debug = "Debug"
    
    func string() -> String {
        return self.rawValue
    }
}

class DrawerMenu: NSObject {
    
    class func Home() -> String {
    
        return DrawerMenuIdentifier.Home.string()
    }
    
    class func News() -> String {
        
        return DrawerMenuIdentifier.News.string()
    }
    
    class func Activity() -> String {
        
        return DrawerMenuIdentifier.Activity.string()
    }
    
    
    class func Setting() -> String {
        
        return DrawerMenuIdentifier.Setting.string()
    }
    
}


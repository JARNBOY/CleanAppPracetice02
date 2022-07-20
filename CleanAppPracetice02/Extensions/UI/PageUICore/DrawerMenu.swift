//
//  DrawerMenu.swift
//  StockShirt
//
//  Created by Papon Supamongkonchai on 20/2/2564 BE.
//

import Foundation

enum DrawerMenuIdentifier: String {
    case Home = "Home"
    case Energy = "Energy"
    case Service = "Service"
    case Noti = "Noti"
    case Me = "Me"
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
    
    class func Energy() -> String {
        
        return DrawerMenuIdentifier.Energy.string()
    }
    
    class func Service() -> String {
        
        return DrawerMenuIdentifier.Service.string()
    }
    
    
    class func Noti() -> String {
        
        return DrawerMenuIdentifier.Noti.string()
    }
    
    class func Me() -> String {
        return DrawerMenuIdentifier.Me.string()
    }
    
}


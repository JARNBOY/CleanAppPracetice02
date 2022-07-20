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
    
    //MARK: Tab menu Controller
    static func showHome() {
        rootViewController.showView(page: .Home)
        AppGlobal.sharedInstance().activeDrawingMenu = DrawerMenu.Home()
    }
    
    static func showEnergy(){
        rootViewController.showView(page: .News)
        AppGlobal.sharedInstance().activeDrawingMenu = DrawerMenu.News()
        
    }
    
    static func showService(){
        rootViewController.showView(page: .Activity)
        AppGlobal.sharedInstance().activeDrawingMenu = DrawerMenu.Activity()
        
    }
    
    static func showNoti(){
        rootViewController.showView(page: .Setting)
        AppGlobal.sharedInstance().activeDrawingMenu = DrawerMenu.Setting()
        
    }
    
    //MARK: Push
    
    //MARK: Present
    
}

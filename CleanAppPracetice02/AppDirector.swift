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
    
    static func showNews(){
        rootViewController.showView(page: .News)
        AppGlobal.sharedInstance().activeDrawingMenu = DrawerMenu.News()
        
    }
    
    static func showActivity(){
        rootViewController.showView(page: .Activity)
        AppGlobal.sharedInstance().activeDrawingMenu = DrawerMenu.Activity()
        
    }
    
    static func showSetting(){
        rootViewController.showView(page: .Setting)
        AppGlobal.sharedInstance().activeDrawingMenu = DrawerMenu.Setting()
        
    }
    
    //MARK: Controller - pushViewController
    
    
    static func showLoginViewController(){
        
        let loginViewController = LoginViewController.instantiateFromStoryboard()
        _ = loginViewController.view
        
        self.rootViewController.navigationController?.pushViewController(loginViewController, animated: true)
        
    }
    
    
    static func showDetailNewsViewController(source: NewsDataStore){
        
        let detailNewsViewController = DetailNewsViewController.instantiateFromStoryboard()
        _ = detailNewsViewController.view
        detailNewsViewController.prepareRoutingFromNews(source: source)
        
        
        self.rootViewController.navigationController?.pushViewController(detailNewsViewController, animated: true)
        
    }
    
    //MARK: Dialog - presentViewController
    
//    static func showDialogSelectYearViewController(delegate:DialogSelectYearViewControllerDelegate){
//
//        let dialog = DialogSelectYearViewController.instantiateFromStoryboard()
//        _ = dialog.view
//        dialog.delegate = delegate
//
//        let nav = UINavigationController(rootViewController: dialog)
//        nav.isNavigationBarHidden = true
//        nav.modalPresentationStyle = .overCurrentContext
//        nav.modalTransitionStyle = .coverVertical
//
//        self.rootViewController.present(nav, animated: true, completion: { () -> (Void) in
//            print("show")
//        })
//    }
    
}

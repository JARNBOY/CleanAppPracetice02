//
//  RootNavigationController.swift
//  StockShirt
//
//  Created by Papon Supamongkonchai on 20/2/2564 BE.
//

import Foundation

import UIKit

class RootNavigationController: UINavigationController {
        
    static fileprivate var rootNavigationController: RootNavigationController?
    var autoRotate = false
    static func sharedInstance() -> RootNavigationController {
        if let sharedInstance = RootNavigationController.rootNavigationController {
            return sharedInstance
        }else{
            RootNavigationController.rootNavigationController = RootNavigationController()
            _ = RootNavigationController.rootNavigationController?.view
            return RootNavigationController.rootNavigationController!
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        RootNavigationController.rootNavigationController = self
        
        interactivePopGestureRecognizer?.delegate = self
    }
    
    //---screen rotation ----
    override open var shouldAutorotate: Bool {
            return autoRotate
    }
    
    deinit {
        delegate = nil
        interactivePopGestureRecognizer?.delegate = nil
    }
    
    // MARK: - Overrides
    
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        duringPushAnimation = true
        
        super.pushViewController(viewController, animated: animated)
    }
    
    // MARK: - Private Properties
    
    fileprivate var duringPushAnimation = false
}

extension UINavigationController {
    open override var preferredStatusBarStyle: UIStatusBarStyle {
        return topViewController?.preferredStatusBarStyle ?? .default
    }
}

// MARK: - UINavigationControllerDelegate

extension RootNavigationController: UINavigationControllerDelegate {
    
    func navigationController(_ navigationController: UINavigationController, didShow viewController: UIViewController, animated: Bool) {
        guard let RootNavigationController = navigationController as? RootNavigationController else { return }
        
        RootNavigationController.duringPushAnimation = false
    }
    
}

// MARK: - UIGestureRecognizerDelegate

extension RootNavigationController: UIGestureRecognizerDelegate {
    
    func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        guard gestureRecognizer == interactivePopGestureRecognizer else {
            return true // default value
        }
        
        // Disable pop gesture in two situations:
        // 1) when the pop animation is in progress
        // 2) when user swipes quickly a couple of times and animations don't have time to be performed
        return viewControllers.count > 1// && duringPushAnimation == false
    }
}

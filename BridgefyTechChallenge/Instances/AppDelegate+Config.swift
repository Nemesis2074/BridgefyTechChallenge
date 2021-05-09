//
//  AppDelegate+Config.swift
//  BridgefyTechChallenge
//
//  Created by Adair de Jesús Castillo Meza on 08/05/21.
//

import Foundation
import UIKit

extension AppDelegate{
    
    public class func shared() -> AppDelegate{
        return UIApplication.shared.delegate as! AppDelegate
    }
    
    public func showLoginSection(){
        let viewController = UIStoryboard.auth().instantiateInitialViewController()
        UIView.transition(with: self.window!, duration: Styles.Constants.AnimationTime, options: [.transitionCrossDissolve], animations: {
            self.window!.rootViewController = viewController
        }, completion: nil)
    }
    
    public func showMainSection(){
        let viewController = UIStoryboard.main().instantiateInitialViewController()
        UIView.transition(with: self.window!, duration: Styles.Constants.AnimationTime, options: [.transitionCrossDissolve], animations: {
            self.window!.rootViewController = viewController
        }, completion: nil)
    }
    
}

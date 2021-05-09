//
//  TabsViewController.swift
//  BridgefyTechChallenge
//
//  Created by Adair de Jesús Castillo Meza on 08/05/21.
//

import UIKit

class TabsViewController: UITabBarController {
    
    private func initComponents(){
        
        self.tabBar.barStyle = .blackOpaque
        self.tabBar.isOpaque = true
        self.tabBar.isTranslucent = false
        self.tabBar.tintColor = Styles.Color.textAccent
        self.tabBar.barTintColor = Styles.Color.bgGeneral
        self.tabBar.layer.shadowColor = UIColor.black.cgColor
        self.tabBar.layer.shadowOffset = CGSize(width: -0.5, height: -0.5)
        self.tabBar.layer.shadowOpacity = Styles.Constants.ShadowOpacity
        self.tabBar.layer.shadowRadius = Styles.Constants.ShadowRadius
        
//
//        let eventsVC = UIStoryboard.instanceEvents()
//        eventsVC.tabBarItem.title = Section.Events.asString()
//        eventsVC.tabBarItem.image = Styles.Icon.tabEvents
//        eventsVC.tabBarItem.selectedImage = Styles.Icon.tabEvents
//
//        let navEvents = UINavigationController(rootViewController: eventsVC)
//        navEvents.isNavigationBarHidden = true
//
//        if(AppSettings.shared.userType == .Admin){
//
//            let readerVC = UIStoryboard.instanceReader()
//            readerVC.tabBarItem.title = Section.Reader.asString()
//            readerVC.tabBarItem.image = Styles.Icon.tabReader
//            readerVC.tabBarItem.selectedImage = Styles.Icon.tabReader
//
//            let navReader = UINavigationController(rootViewController: readerVC)
//            navReader.isNavigationBarHidden = true
//
//            self.viewControllers = [navEvents, navReader]
//
//        }else{
//
//            let profileVC = UIStoryboard.instanceProfile()
//            profileVC.tabBarItem.title = Section.Profile.asString()
//            profileVC.tabBarItem.image = Styles.Icon.tabProfile
//            profileVC.tabBarItem.selectedImage = Styles.Icon.tabProfile
//
//            let navProfile = UINavigationController(rootViewController: profileVC)
//            navProfile.isNavigationBarHidden = true
//            self.viewControllers = [navEvents, navProfile]
//        }
        
        self.selectedIndex = 0
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.initComponents()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent
    }

}

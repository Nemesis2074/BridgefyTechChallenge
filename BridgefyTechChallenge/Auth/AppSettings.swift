//
//  AppSettings.swift
//  BridgefyTechChallenge
//
//  Created by Adair de Jesús Castillo Meza on 08/05/21.
//

import UIKit

class AppSettings: NSObject {

    private struct Keys{
        static let ApiToken = "api_token"
        static let ApiHost = "api_host"
        
        static let UserToken = "user_token"
    }
    
    public static let shared:AppSettings = AppSettings()
    
    private override init() {
        super.init()
    }
    
    private var defaults:UserDefaults{
        return UserDefaults.standard
    }
    
    public let apiToken: String = "c220045095msh0e500381f036195p1a352djsnb2b4a91b96e3"
    public let apiHost: String = "restcountries-v1.p.rapidapi.com"
    
    public var userToken:String{
        get{
            return defaults.string(forKey: Keys.UserToken) ?? ""
        }
        set{
            defaults.set(newValue, forKey: Keys.UserToken)
        }
    }
    
    public func save(){
        self.defaults.synchronize()
    }
    
    public func clear(){
        defaults.removeObject(forKey: Keys.UserToken)
        defaults.synchronize()
    }
    
}

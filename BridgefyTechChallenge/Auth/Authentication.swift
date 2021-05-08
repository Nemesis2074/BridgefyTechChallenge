//
//  Authentication.swift
//  BridgefyTechChallenge
//
//  Created by Adair de Jesús Castillo Meza on 08/05/21.
//

import UIKit

class Authentication: NSObject {
    
    public class func isLogin() -> Bool{
        return !AppSettings.shared.userToken.isEmpty
    }
    
    public class func login(username: String, password: String,
                            completed:@escaping Completed<Bool>){
        
        LoginInfo.login(username: username, password: password) { (result) in
            switch(result){
                
                case .success(let token):
                    AppSettings.shared.userToken = token
                    AppSettings.shared.save()
                    completed(.success(true))
                    
                case .failure(let error):
                    completed(.failure(error))
            }
        }
    }
    
}

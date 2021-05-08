//
//  Model+UserInfo.swift
//  BridgefyTechChallenge
//
//  Created by Adair de Jesús Castillo Meza on 08/05/21.
//

import Foundation

extension LoginInfo{
    
    public static func login(username: String, password: String,
                             completed:@escaping Completed<String>){
        if(ServicesManager.isInternetAvailable()){
            ServicesManager.login(username: username, password: password, success: { (info) in
                completed(.success(info.token))
            }, fail: { (error) in
                completed(.failure(error))
            })
        }else{
            let error = ResponseError(status: .NoInternet, message: nil)
            completed(.failure(error))
        }
    }
    
}

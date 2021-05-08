//
//  Services+Auth.swift
//  BridgefyTechChallenge
//
//  Created by Adair de Jesús Castillo Meza on 08/05/21.
//

import Foundation

extension ServicesManager{
    
    internal class func login(username: String, password: String,
                              success:@escaping ResponseSuccess<LoginInfo>,
                              fail:@escaping ResponseFail){
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            success(LoginInfo())
        }
        
    }
    
}

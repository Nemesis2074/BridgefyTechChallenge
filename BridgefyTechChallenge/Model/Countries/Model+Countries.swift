//
//  Model+Countries.swift
//  BridgefyTechChallenge
//
//  Created by Adair de Jesús Castillo Meza on 08/05/21.
//

import Foundation

extension Country{
    
    public static func loadCountries(completed:@escaping Completed<[Country]>){
        if(ServicesManager.isInternetAvailable()){
            ServicesManager.requestCountries { (countries) in
                completed(.success(countries))
            } fail: { (error) in
                completed(.failure(error))
            }
        }else{
            let error = ResponseError(status: .NoInternet, message: nil)
            completed(.failure(error))
        }
    }
}

extension DetailCountry{
    
    public static func loadDetailCountry(completed:@escaping Completed<DetailCountry>){
        if(ServicesManager.isInternetAvailable()){
            ServicesManager.requestDetailCountry { (detail) in
                completed(.success(detail))
            } fail: { (error) in
                completed(.failure(error))
            }
        }else{
            let error = ResponseError(status: .NoInternet, message: nil)
            completed(.failure(error))
        }
    }
}

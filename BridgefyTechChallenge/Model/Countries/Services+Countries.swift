//
//  Services+Countries.swift
//  BridgefyTechChallenge
//
//  Created by Adair de Jesús Castillo Meza on 08/05/21.
//

import Foundation
import Alamofire

extension ServicesManager{
    
    internal class func requestCountries(success:@escaping ResponseSuccess<[Country]>,
                                         fail:@escaping ResponseFail){
        
        let headers: HTTPHeaders = [Headers.ApiKey: AppSettings.shared.apiHost,
                                    Headers.ApiHost: AppSettings.shared.apiHost ]
        
        let request = AF.request(CountriesServices.All, method: .get, parameters: nil, encoding: URLEncoding.default, headers: headers)
        request.responseDecodable(of: [Country].self) { (response) in
            switch(response.result){
                case .success(let countries):
                    success(countries)
                case .failure(_):
                    let status = processStatus(response.response)
                    let error = ResponseError(status: status, message: "")
                    fail(error)
            }
        }
    }
    
    internal class func requestDetailCountry(success:@escaping ResponseSuccess<DetailCountry>,
                                             fail:@escaping ResponseFail){
        let headers: HTTPHeaders = [Headers.ApiKey: AppSettings.shared.apiHost,
                                    Headers.ApiHost: AppSettings.shared.apiHost ]
        
        let request = AF.request(CountriesServices.Detail, method: .get, parameters: nil, encoding: URLEncoding.default, headers: headers)
        request.responseDecodable(of: DetailCountry.self) { (response) in
            switch(response.result){
                case .success(let detail):
                    success(detail)
                case .failure(_):
                    let status = processStatus(response.response)
                    let error = ResponseError(status: status, message: "")
                    fail(error)
            }
        }
    }
    
}

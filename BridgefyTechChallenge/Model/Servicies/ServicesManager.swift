//
//  ServicesManager.swift
//  BridgefyTechChallenge
//
//  Created by Adair de Jesús Castillo Meza on 08/05/21.
//

import Foundation
import Reachability
import Alamofire

typealias ResponseProgress = (CGFloat) -> Void

typealias ResponseSuccess<T> = (T) -> Void

typealias ResponseFail = (ResponseError) -> Void

class ServicesManager: NSObject {

    public struct Headers{
        static let ApiKey = "x-rapidapi-key"
        static let ApiHost = "x-rapidapi-host"
    }
    
    public class func isInternetAvailable() -> Bool{
        let reach = try! Reachability()
        return reach.connection != .unavailable
    }
    
    internal class func processStatus(_ response: HTTPURLResponse?) -> ResponseStatus{
        let value = response?.statusCode ?? 0
        let status = ResponseStatus(rawValue: value) ?? .Fail
        return status
    }
    
}

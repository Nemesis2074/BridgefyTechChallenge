//
//  Response.swift
//  BridgefyTechChallenge
//
//  Created by Adair de Jesús Castillo Meza on 08/05/21.
//

import Foundation

typealias Completed<T> = (Swift.Result<T, ResponseError>) -> Void

public struct ResponseError: Error{
    let status: ResponseStatus
    let message: String?
}

public enum ResponseStatus: Int {
    case OK = 200
    case NoContent = 204
    case Fail = 400
    case UnauthorizedAccess = 401
    case Forbidden = 403
    case NotFound = 404
    case ServerError = 500
    case NoInternet = 601
    case NoData = 602
    case DatabaseError = 603
}

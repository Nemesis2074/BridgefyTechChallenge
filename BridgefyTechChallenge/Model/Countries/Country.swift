//
//  Country.swift
//  BridgefyTechChallenge
//
//  Created by Adair de Jesús Castillo Meza on 08/05/21.
//

import Foundation

struct Country: Codable {
    
    let name: String
    let alpha2Code: String
    let alpha3Code: String
    let region: String
    
    var codeFormatted: String{
        return "\(alpha2Code) / \(alpha3Code)"
    }
    
    var flagUrl: URL?{
        let string = String(format: Endpoints.Images, alpha2Code.lowercased())
        return URL(string: string)
    }
    
    enum CodingKeys: String, CodingKey {
        case name, alpha2Code, alpha3Code, region
    }
}

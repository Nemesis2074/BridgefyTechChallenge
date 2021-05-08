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
    
    enum CodingKeys: String, CodingKey {
        case name, alpha2Code, alpha3Code, region
    }
}

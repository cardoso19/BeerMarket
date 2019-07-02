//
//  Beer.swift
//  BeerMarket
//
//  Created by Matheus Cardoso kuhn on 01/07/19.
//  Copyright © 2019 MDT. All rights reserved.
//

import Foundation

struct Beer: Codable {
    
    let id: Identifier<Beer>
    let name: Name<Beer>
    let imageURL: String
    let alcoholByVolume: Double
    let tagline: String
    let bitterness: Double?
    let description: String
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case imageURL = "image_url"
        case alcoholByVolume = "abv"
        case tagline
        case bitterness = "ibu"
        case description
    }
}

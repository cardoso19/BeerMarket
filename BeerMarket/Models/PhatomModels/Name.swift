//
//  Name.swift
//  BeerMarket
//
//  Created by Matheus Cardoso kuhn on 01/07/19.
//  Copyright © 2019 MDT. All rights reserved.
//

import Foundation

struct Name<T>: Codable {
    
    //MARK: - Variables
    let value: String
    
    //MARK: - Life Cycle
    init(value: String) {
        self.value = value
    }
    
    init(from decoder: Decoder) throws {
        self.value = try String(from: decoder)
    }
    
    func encode(to encoder: Encoder) throws {
        try value.encode(to: encoder)
    }
}

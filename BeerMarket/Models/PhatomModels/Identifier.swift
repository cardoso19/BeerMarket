//
//  Identifier.swift
//  BeerMarket
//
//  Created by Matheus Cardoso kuhn on 01/07/19.
//  Copyright © 2019 MDT. All rights reserved.
//

import Foundation

struct Identifier<T>: Codable {
    
    //MARK: - Variables
    let value: Int
    
    //MARK: - Life Cycle
    init(value: Int) {
        self.value = value
    }
    
    init(from decoder: Decoder) throws {
        self.value = try Int(from: decoder)
    }
    
    func encode(to encoder: Encoder) throws {
        try value.encode(to: encoder)
    }
}

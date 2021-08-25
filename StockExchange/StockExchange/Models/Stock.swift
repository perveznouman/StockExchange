//
//  Stock.swift
//  Stock
//
//  Created by Nouman Pervez on 05/08/21.
//

import Foundation

struct Stock: Decodable {
    
    let symbol: String
    let description: String
    let price: Double
    let change: String
}


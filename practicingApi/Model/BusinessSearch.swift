//
//  BusinessSearch.swift
//  practicingApi
//
//  Created by Joao Leal on 28/01/2024.
//

import Foundation

struct BusinessSearch: Decodable {
    var businesses = [Business]()
    var region = Region()
    var total = 0
    
    
}

struct Region: Decodable {
    var center: Coordinate?
}

struct Coordinate: Decodable {
    var latitude: Double?
    var longitude: Double?
}

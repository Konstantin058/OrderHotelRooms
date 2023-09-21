//
//  Rooms.swift
//  OrderHotelApp
//
//  Created by Константин Евсюков on 31.08.2023.
//

import Foundation

// MARK: - Rooms
struct RoomsResult: Codable {
    let rooms: [Room]
}

// MARK: - Room
struct Room: Codable, Identifiable {
    let id: Int
    let name: String
    let price: Int
    let pricePer: String
    let peculiarities: [String]
    let imageUrls: [String]

    enum CodingKeys: String, CodingKey {
        case id, name, price
        case pricePer = "price_per"
        case peculiarities
        case imageUrls = "image_urls"
    }
}

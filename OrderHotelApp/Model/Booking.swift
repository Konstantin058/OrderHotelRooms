//
//  Booking.swift
//  OrderHotelApp
//
//  Created by Константин Евсюков on 08.09.2023.
//

import Foundation
import SwiftUI

struct Booking: Codable, Identifiable {
    let id: Int
    let hotelName, hotelAdress: String
    let horating: Int
    let ratingName, departure, arrivalCountry, tourDateStart: String
    let tourDateStop: String
    let numberOfNights: Int
    let room, nutrition: String
    let tourPrice, fuelCharge, serviceCharge: Int

    enum CodingKeys: String, CodingKey {
        case id
        case hotelName = "hotel_name"
        case hotelAdress = "hotel_adress"
        case horating
        case ratingName = "rating_name"
        case departure
        case arrivalCountry = "arrival_country"
        case tourDateStart = "tour_date_start"
        case tourDateStop = "tour_date_stop"
        case numberOfNights = "number_of_nights"
        case room, nutrition
        case tourPrice = "tour_price"
        case fuelCharge = "fuel_charge"
        case serviceCharge = "service_charge"
    }
    
    func getTotalPrice() -> String {
        var result = 0
        
        result = tourPrice + fuelCharge + serviceCharge
        
        return "\(result) руб"
    }
}
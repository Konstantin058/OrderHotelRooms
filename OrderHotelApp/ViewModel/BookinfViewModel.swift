//
//  BookinfViewModel.swift
//  OrderHotelApp
//
//  Created by Константин Евсюков on 08.09.2023.
//

import Foundation
import SwiftUI
import Combine

class BookinfViewModel: ObservableObject {
    
    @Published var bookingRoom: [Booking] = []
    
    @Published var modelError = false
    @Published var modelErrorMessage: String = ""
    
    private var bag = Set<AnyCancellable>()
    
    func fetchBooking() {
        
        let urlSting = "https://run.mocky.io/v3/e8868481-743f-4eb2-a0d7-2bc4012275c8"
        
        guard let url = URL(string: urlSting) else {
            print("🤬ERRRROOOOOOORRRRRR")
            return
        }
        
        URLSession
            .shared
            .dataTaskPublisher(for: url)
            .map(\.data)
            .decode(type: Booking.self, decoder: JSONDecoder())
            .map({ room in
                [room]
            })
            .catch() { error -> Just<[Booking]> in
                print("Error:\(error)")
                DispatchQueue.main.sync {
                    self.modelError = true
                    self.modelErrorMessage = "\(error)"
                }
                return Just(self.bookingRoom)
            }
            .receive(on: DispatchQueue.main)
            .assign(to: &$bookingRoom)
    }
}

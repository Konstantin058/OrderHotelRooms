//
//  HotelViewModel.swift
//  OrderHotelApp
//
//  Created by Константин Евсюков on 31.08.2023.
//

import Foundation
import SwiftUI
import Combine

class HotelViewModel: ObservableObject {
    
    @Published var hotels: [Hotel] = []
    @Published var modelError = false
    @Published var modelErrorMessage: String = ""

    func fetchHotel() {
        
        let urlString = "https://run.mocky.io/v3/35e0d18e-2521-4f1b-a575-f0fe366f66e3"
        
        guard let url = URL(string: urlString) else {
            print("🤬ERRRROOOOOOORRRRRR")
            return
        }

        
        URLSession
            .shared
            .dataTaskPublisher(for: url)
            .map(\.data)
            .decode(type: Hotel.self, decoder: JSONDecoder())
            .map({ hotel in
                [hotel]
            })
            .catch() { error -> Just<[Hotel]> in
                print("Error:\(error)")
                DispatchQueue.main.sync {
                    self.modelError = true
                    self.modelErrorMessage = "\(error)"
                }
                return Just(self.hotels)
            }
            .receive(on: DispatchQueue.main)
            .assign(to: &$hotels)
    }
}

//class HotelViewModel: ObservableObject {
//
//    @Published var hotelViewModel: Hotel?
//
//    private var bag = Set<AnyCancellable>()
//
//    func fetchHotel() {
//
//        let urlString = "https://run.mocky.io/v3/35e0d18e-2521-4f1b-a575-f0fe366f66e3"
//
//        guard let url = URL(string: urlString) else {
//            print("🤬ERRRROOOOOOORRRRRR")
//            return
//        }
//
//        URLSession
//            .shared
//            .dataTaskPublisher(for: url)
//            .receive(on: DispatchQueue.main)
//            .tryMap { res in
//                guard let response = res.response as? HTTPURLResponse, response.statusCode >= 200 && response.statusCode < 300 else {
//                    throw URLError(.badServerResponse)
//                }
//
//                let decoder = JSONDecoder()
//
//                guard let hotel = try? decoder.decode(Hotel.self, from: res.data) else {
//                    throw URLError(.badURL)
//                }
//                return hotel
//            }
//            .sink { completion in
//                switch completion {
//                case .finished:
//                    print("AllGood")
//                case .failure(let error):
//                    print(error.localizedDescription)
//                }
//            } receiveValue: { [weak self] returnedHotel in
//                self?.hotelViewModel = returnedHotel
//            }
//            .store(in: &bag)
//    }
//}

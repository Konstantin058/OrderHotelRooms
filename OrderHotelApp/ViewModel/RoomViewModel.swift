//
//  RoomViewModel.swift
//  OrderHotelApp
//
//  Created by Константин Евсюков on 31.08.2023.
//

import Foundation
import SwiftUI
import Combine

class RoomViewModel: ObservableObject {
    
    @Published var rooms: [Room] = []
    
    private var bag = Set<AnyCancellable>()
    
    func fetchRoom() {
        let urlString = "https://run.mocky.io/v3/f9a38183-6f95-43aa-853a-9c83cbb05ecd"
        
        guard let url = URL(string: urlString) else {
            print("🤬ERRRROOOOOOORRRRRR")
            return
        }
        
        URLSession
            .shared
            .dataTaskPublisher(for: url)
            .receive(on: DispatchQueue.main)
            .tryMap { res in
                guard let response = res.response as? HTTPURLResponse, response.statusCode >= 200 && response.statusCode < 300 else {
                    throw URLError(.badServerResponse)
                }
                
                let decoder = JSONDecoder()
                
                guard let room = try? decoder.decode(RoomsResult.self, from: res.data) else {
                    throw URLError(.badURL)
                }
                return room.rooms
            }
            .sink { completion in
                switch completion {
                case .finished:
                    print("AllGood")
                case .failure(let error):
                    print(error.localizedDescription)
                }
            } receiveValue: { [weak self] returnedRoom in
                self?.rooms = returnedRoom
            }
            .store(in: &bag)
    }
}

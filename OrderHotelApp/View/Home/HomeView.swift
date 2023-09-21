//
//  HomeView.swift
//  OrderHotelApp
//
//  Created by Константин Евсюков on 31.08.2023.
//

import SwiftUI

struct HomeView: View {
    @StateObject var hotelModel = HotelViewModel()
    @State private var showDetail = false
    
    var body: some View {
        ZStack {
            
            NavigationView {
                
                VStack {
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        
                        HStack(spacing: 10) {
                            
                            ForEach(hotelModel.hotels) { hotel in
                                HotelView(hotel: hotel)
                            }
                        }
                        
                        HStack {
                            ForEach(hotelModel.hotels) { hotel in
                                AboutHotelView(hotel: hotel)
                            }
                        }
                    }
                    
                    NavigationLink(destination: RoomsView()) {
                        
                        Button(action: {
                            self.showDetail.toggle()
                        }) {
                            
                            Text("К выбору номера")
                        }
                        .padding()
                        .frame(width: 343, height: 48)
                        .font(.custom("SF-Pro-Display-Regular.otf", size: 16))
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .cornerRadius(20)
                    }
                }
                .navigationTitle("Отель")
            }
            .navigationBarBackButtonHidden(true)
        }
        .onAppear() {
            self.hotelModel.fetchHotel()
        }
    }
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

/*
 List {
     Section {
         ForEach(hotelModel.hotels) { hotel in
             HotelView(hotel: hotel)
         }
     } header: {
         Text("Hotels")
     } footer: {
         if self.hotelModel.modelError {
             Text("Error \(self.hotelModel.modelErrorMessage)")
         } else {
             Text("Found \(self.hotelModel.hotels.count)")
         }
     }

 }
 */

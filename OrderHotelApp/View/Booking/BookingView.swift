//
//  BookingView.swift
//  OrderHotelApp
//
//  Created by Константин Евсюков on 08.09.2023.
//

import SwiftUI

struct BookingView: View {
    @StateObject var bookingViewModel = BookinfViewModel()
    
    @Environment(\.dismiss) var backButton
    
    var body: some View {
        ZStack {
            NavigationView {
                
                VStack {
                    ScrollView(.vertical, showsIndicators: false) {
                        
                        HStack {
                            
                            ForEach(bookingViewModel.bookingRoom) { footer in
                                FooterView(booking: footer)
                            }
                        }
                        
                        VStack {
                            ForEach(bookingViewModel.bookingRoom) { info in
                                InfoView(booking: info)
                            }
                        }
                        
                        VStack {
                            ForEach(bookingViewModel.bookingRoom) { price in
                                CalculationView(booking: price)
                            }
                        }
                        
                    }
                }
                .navigationTitle("")
                .toolbar(content: {
                    ToolbarItem(placement: .navigationBarLeading) {
                        
                        Button {
                            backButton()
                        } label: {
                            Image(systemName: "chevron.left")
                                .foregroundColor(.black)
                        }
                    }
                    
                    ToolbarItem(placement: .principal) {
                        
                        Text("Бронирование")
                            .font(.custom("SF-Pro-Display-Regular.otf", size: 18))
                    }
                })
                .onAppear {
                    bookingViewModel.fetchBooking()
                }
            }
            .navigationBarBackButtonHidden(true)
        }
    }
}

struct BookingView_Previews: PreviewProvider {
    static var previews: some View {
        BookingView()
    }
}

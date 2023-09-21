//
//  FooterView.swift
//  OrderHotelApp
//
//  Created by Константин Евсюков on 08.09.2023.
//

import SwiftUI

struct FooterView: View {
    var booking: Booking
    
    var body: some View {
        
        VStack {
            
            VStack {
                HStack(spacing: 5) {
                    
                    Image(systemName: "star.fill")
                        .frame(width: 15, height: 15)
                        .foregroundColor(.orange)
                    
                    Text("\(booking.horating)")
                        .font(.system(size: 16))
                        .foregroundColor(.orange)
                    
                    Text(booking.ratingName)
                        .font(.system(size: 16))
                        .foregroundColor(.orange)
                }
                .frame(width: 149, height: 29)
                .padding([.leading, .trailing], 10)
                .padding([.top, .bottom], 5)
                .background(Color.orange.opacity(0.5))
                .cornerRadius(5)
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
            
            HStack {
                Text(booking.hotelName)
                    .font(.custom("SF-Pro-Display-Regular.otf", size: 22))
            }
            .padding(.horizontal)
            .frame(maxWidth: .infinity, alignment: .leading)
            
            HStack {
                
                Button(action: {}) {
                    
                    Text(booking.hotelAdress)
                        .font(.custom("SF-Pro-Display-Regular.otf", size: 17))
                        .foregroundColor(.blue)
                }
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.white)
        .cornerRadius(15)
        .shadow(radius: 1)
    }
}

//
//  HotelView.swift
//  OrderHotelApp
//
//  Created by Константин Евсюков on 03.09.2023.
//

import SwiftUI

struct HotelView: View {
    var hotel: Hotel
    //@State var index = 0
    
    var body: some View {
        
        VStack {
            VStack {
                
                ScrollView(.horizontal, showsIndicators: false) {
                    
                    HStack(spacing: 10) {
                        ForEach(hotel.imageUrls, id: \.self) { index in
                            HotelImageView(imageUrl: "\(index)")
                        }
                    }
                }
                .frame(width: 343, height: 257)
                .padding()
                
                HStack(spacing: 5) {
                    
                    Image(systemName: "star.fill")
                        .frame(width: 15, height: 15)
                        .foregroundColor(.orange)
                    
                    Text("\(hotel.rating)")
                        .font(.custom("SF-Pro-Display-Light.otf", size: 16))
                        .foregroundColor(.orange)
                    
                    Text(hotel.ratingName)
                        .font(.custom("SF-Pro-Display-Light.otf", size: 16))
                        .foregroundColor(.orange)
                }
                .padding([.leading, .trailing], 10)
                .padding([.top, .bottom], 5)
                .background(Color.orange.opacity(0.5))
                .cornerRadius(5)
                
                VStack(spacing: 10) {
                    
                    Text(hotel.name)
                        .font(.custom("SF-Pro-Display-Light.otf", size: 22))
                    
                    Button(action: {}) {
                        Text(hotel.adress)
                            .font(.custom("SF-Pro-Display-Light.otf", size: 14))
                            .foregroundColor(.blue)
                    }
                }
                
                HStack(spacing: 20) {
                    
                    Text("от \(hotel.minimalPrice) P   ")
                        .font(.custom("SF-Pro-Display-Light.otf", size: 30))
                    
                    +
                    
                    Text(hotel.priceForIt)
                        .font(.custom("SF-Pro-Display-Light.otf", size: 16))
                        .foregroundColor(.gray.opacity(0.7))
                }
                .padding()
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.white)
        .cornerRadius(15)
        .shadow(radius: 1)
    }
}

//struct HotelView_Previews: PreviewProvider {
//    static var previews: some View {
//        HotelView()
//    }
//}

/*
 VStack {
     Text("Hotel : " + hotel.name)
     VStack(alignment: .leading) {
         Text("Address : " + hotel.adress)
         Text("rating : \(hotel.rating)")
         Text("Price : \(hotel.minimalPrice)")
         LazyVGrid(columns: [GridItem(), GridItem()]){
             ForEach(hotel.imageUrls, id:\.self) { imageUrl in
                 HotelImageView(imageUrl: imageUrl)
             }
             .frame(maxWidth: .infinity, maxHeight: .infinity)
         }
     }
     .padding([.leading], 20)
 }
 */

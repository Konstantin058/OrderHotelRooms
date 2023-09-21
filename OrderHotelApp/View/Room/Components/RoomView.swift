//
//  RoomView.swift
//  OrderHotelApp
//
//  Created by Константин Евсюков on 07.09.2023.
//

import SwiftUI

struct RoomView: View {
    var rooms: Room
    @State var showDetail = false
    
    var body: some View {
        VStack {
            
            ScrollView(.horizontal, showsIndicators: false) {
                
                HStack(spacing: 10) {
                    
                    ForEach(rooms.imageUrls, id: \.self) { index in
                        RoomsImageView(imageUrl: index)
                    }
                }
            }
            .frame(width: 343, height: 257)
            .padding()
            
            VStack(alignment: .leading, spacing: 0) {
                Text(rooms.name)
                    .font(.custom("SF-Pro-Display-Heavy.otf", size: 22))
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
            
            VStack(alignment: .leading, spacing: 0) {
                
                HStack(spacing: 10) {
                    
                    ForEach(rooms.peculiarities, id: \.self) { room in
                        Text(room)
                            .padding()
                            .font(.custom("SF-Pro-Display-Light.otf", size: 16))
                            .foregroundColor(.gray.opacity(0.5))
                            .background(Color.gray.opacity(0.1))
                            .cornerRadius(15)
                    }
                }
                .padding()
                .padding(.leading, -19)
                
                
                
                Button(action: {}) {
                    HStack(spacing: 5) {
                        
                        Text("Подробнее о номере")
                            .font(.custom("SF-Pro-Display-Light.otf", size: 16))
                            .foregroundColor(.blue)
                        
                        Image(systemName: "chevron.right")
                    }
                }
                .frame(width: 192, height: 29)
                .background(Color.blue.opacity(0.3))
                .cornerRadius(5)
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
            
            HStack(spacing: 10) {
                
                Text("\(rooms.price) Р   ")
                    .font(.custom("SF-Pro-Display-Bold.otf", size: 30))
                    .bold()
                
                +
                
                Text(rooms.pricePer)
                    .font(.custom("SF-Pro-Display-Light.otf", size: 16))
                    .foregroundColor(.gray)
            }
            .padding(.horizontal)
            .frame(maxWidth: .infinity, alignment: .leading)
            
            VStack {
                
                NavigationLink {
                    BookingView()
                } label: {
                    Button(action: {
                        self.showDetail.toggle()
                    }) {
                        
                        Text("Выбрать номер")
                            .font(.custom("SF-Pro-Display-Light.otf", size: 16))
                            .foregroundColor(.white)
                    }
                    .frame(width: 343, height: 48)
                    .background(Color.blue)
                    .cornerRadius(15)
                }
                
            }
            .padding()
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.white)
        .cornerRadius(15)
        .shadow(radius: 1)
    }
}

struct RoomView_Previews: PreviewProvider {
    static var previews: some View {
        RoomView(rooms: Room(id: 1, name: "SuperPuper", price: 1000, pricePer: "jn 500", peculiarities: ["Бесплатный пивас fgfgfgfgfgfg", "Beers dfdffdf dffdfdfdfdf"], imageUrls: [""]))
    }
}

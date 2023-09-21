//
//  AboutHotelView.swift
//  OrderHotelApp
//
//  Created by Константин Евсюков on 03.09.2023.
//

import SwiftUI

struct AboutHotelView: View {
    var hotel: Hotel
    var info: [InfoList] = InfoList.infoList
    
    var body: some View {
        
        VStack {
        
            Text("Об отеле")
                .font(.custom("SF-Pro-Display-Light.otf", size: 22))
                .padding()
                .padding(.leading)
            
            VStack {
                  
                Text(hotel.aboutTheHotel.description)
                    .font(.custom("SF-Pro-Display-Light.otf", size: 16))
                    .padding()
                
                
                VStack {
                    ForEach(info) { item in
                        
                        VStack {
                            HStack(spacing: 10) {
                                
                                Image(item.image)
                                
                                VStack(alignment: .leading, spacing: 5) {
                                    
                                    Text(item.title)
                                        .font(.custom("SF-Pro-Display-Regular.otf", size: 16))
                                        
                                    
                                    Text(item.description)
                                        .font(.custom("SF-Pro-Display-Light.otf", size: 14))
                                        .foregroundColor(.gray)
                                }
                                .padding(.horizontal)
                                
                                Spacer()
                                
                                Button(action: {}) {
                                    
                                    Image(systemName: "chevron.right")
                                        .foregroundColor(.black)
                                }
                            }
                            .padding()
                        }
                    }
                }
                .padding(.horizontal)
                .background(Color.gray.opacity(0.05))
                .cornerRadius(15)
                
            }
            .padding()
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.white)
        .cornerRadius(15)
        .shadow(radius: 5)
        
    }
}

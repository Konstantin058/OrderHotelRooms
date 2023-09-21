//
//  InfoView.swift
//  OrderHotelApp
//
//  Created by Константин Евсюков on 09.09.2023.
//

import SwiftUI

struct InfoView: View {
    var booking: Booking
    
    var body: some View {
        
        VStack {
            
            Group {
                
                HStack {
                    
                    HStack {
                        
                        VStack(alignment: .leading, spacing: 20) {
                            
                            HStack {
                                
                                HStack {
                                    
                                    Text("Вылет из")
                                        .font(.custom("SF-Pro-Display-Regular.otf", size: 16))
                                        .foregroundColor(.gray)
                                }
                                .frame(maxWidth: .infinity, alignment: .leading)
                                
                                Spacer()
                                
                                HStack {
                                    
                                    Text(booking.departure)
                                        .font(.custom("SF-Pro-Display-Regular.otf", size: 16))
                                }
                                .padding(.leading, -5)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            }
                            
                            HStack {
                                
                                HStack {
                                    
                                    Text("Страна, город")
                                        .font(.custom("SF-Pro-Display-Regular.otf", size: 16))
                                        .foregroundColor(.gray)
                                }
                                .frame(maxWidth: .infinity, alignment: .leading)
                                
                                Spacer()
                                
                                HStack {
                                    
                                    Text(booking.arrivalCountry)
                                        .font(.custom("SF-Pro-Display-Regular.otf", size: 16))
                                }
                                .padding(.leading, -5)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            }
                            
                            HStack {
                                
                                HStack {
                                    
                                    Text("Даты")
                                        .font(.custom("SF-Pro-Display-Regular.otf", size: 16))
                                        .foregroundColor(.gray)
                                }
                                .frame(maxWidth: .infinity, alignment: .leading)
                                
                                Spacer()
                                
                                HStack {
                                    
                                    Text("\(booking.tourDateStart)-\(booking.tourDateStop)")
                                        .font(.custom("SF-Pro-Display-Regular.otf", size: 16))
                                }
                                .padding(.leading, -5)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            }
                            
                            HStack {
                                
                                HStack {
                                    
                                    Text("Кол-во ночей")
                                        .font(.custom("SF-Pro-Display-Regular.otf", size: 16))
                                        .foregroundColor(.gray)
                                }
                                .frame(maxWidth: .infinity, alignment: .leading)
                                
                                Spacer()
                                
                                HStack {
                                    
                                    Text("\(booking.numberOfNights)")
                                        .font(.custom("SF-Pro-Display-Regular.otf", size: 16))
                                }
                                .padding(.leading, -5)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            }
                            
                            HStack {
                                
                                HStack {
                                    
                                    Text("Отель")
                                        .font(.custom("SF-Pro-Display-Regular.otf", size: 16))
                                        .foregroundColor(.gray)
                                }
                                .frame(maxWidth: .infinity, alignment: .leading)
                                
                                Spacer()
                                
                                HStack {
                                    
                                    Text(booking.hotelName)
                                        .font(.custom("SF-Pro-Display-Regular.otf", size: 16))
                                }
                                .padding(.leading, -5)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            }
                            
                            HStack {
                                
                                HStack {
                                    
                                    Text("Номер")
                                        .font(.custom("SF-Pro-Display-Regular.otf", size: 16))
                                        .foregroundColor(.gray)
                                }
                                .frame(maxWidth: .infinity, alignment: .leading)
                                
                                Spacer()
                                
                                HStack {
                                    
                                    Text(booking.room)
                                        .font(.custom("SF-Pro-Display-Regular.otf", size: 16))
                                }
                                .padding(.leading, -5)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            }
                            
                            HStack {
                                
                                HStack {
                                    
                                    Text("Питание")
                                        .font(.custom("SF-Pro-Display-Regular.otf", size: 16))
                                        .foregroundColor(.gray)
                                }
                                .frame(maxWidth: .infinity, alignment: .leading)
                                
                                Spacer()
                                
                                HStack {
                                    
                                    Text(booking.nutrition)
                                        .font(.custom("SF-Pro-Display-Regular.otf", size: 16))
                                }
                                .padding(.leading, -5)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            }
                        }
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .center)
                    }
                    .padding(.leading, -7)
                    .frame(maxWidth: .infinity, alignment: .leading)
                }
            }
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.white)
        .cornerRadius(15)
        .shadow(radius: 1)
    }
}

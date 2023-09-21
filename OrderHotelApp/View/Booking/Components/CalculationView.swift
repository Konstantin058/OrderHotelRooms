//
//  CalculationView.swift
//  OrderHotelApp
//
//  Created by Константин Евсюков on 16.09.2023.
//

import SwiftUI

struct CalculationView: View {
    var booking: Booking
    @StateObject var bookingViewModel = BookinfViewModel()
    @State var showDetail = false
    
    var body: some View {
        
        VStack {
            
            Group {
                
                HStack {
                    
                    HStack {
                        
                        VStack(alignment: .leading, spacing: 20) {
                            
                            HStack {
                                
                                HStack {
                                    
                                    Text("Тур")
                                        .font(.custom("SF-Pro-Display-Regular.otf", size: 16))
                                        .foregroundColor(.gray)
                                }
                                .frame(maxWidth: .infinity, alignment: .leading)
                                
                                Spacer()
                                
                                HStack {
                                    
                                    Text("\(booking.tourPrice) руб")
                                        .font(.custom("SF-Pro-Display-Regular.otf", size: 16))
                                }
                                .padding(.leading, -5)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            }
                            
                            HStack {
                                
                                HStack {
                                    
                                    Text("Топливный сбор")
                                        .font(.custom("SF-Pro-Display-Regular.otf", size: 16))
                                        .foregroundColor(.gray)
                                }
                                .frame(maxWidth: .infinity, alignment: .leading)
                                
                                Spacer()
                                
                                HStack {
                                    
                                    Text("\(booking.fuelCharge) руб")
                                        .font(.custom("SF-Pro-Display-Regular.otf", size: 16))
                                }
                                .padding(.leading, -5)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            }
                            
                            HStack {
                                
                                HStack {
                                    
                                    Text("Сервисный сбор")
                                        .font(.custom("SF-Pro-Display-Regular.otf", size: 16))
                                        .foregroundColor(.gray)
                                }
                                .frame(maxWidth: .infinity, alignment: .leading)
                                
                                Spacer()
                                
                                HStack {
                                    
                                    Text("\(booking.serviceCharge) руб")
                                        .font(.custom("SF-Pro-Display-Regular.otf", size: 16))
                                }
                                .padding(.leading, -5)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            }
                            
                            HStack {
                                
                                HStack {
                                    
                                    Text("к оплате")
                                        .font(.custom("SF-Pro-Display-Regular.otf", size: 16))
                                        .foregroundColor(.gray)
                                }
                                .frame(maxWidth: .infinity, alignment: .leading)
                                
                                Spacer()
                                
                                HStack {
                                    
                                    Text("\(booking.getTotalPrice())")
                                        .font(.custom("SF-Pro-Display-Regular.otf", size: 16))
                                }
                                .padding(.leading, -5)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            }
                            
                            Button(action: {}) {
                                
                                
                            }
                        }
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .center)
                    }
                    .padding(.leading, -7)
                    .frame(maxWidth: .infinity, alignment: .leading)
                }
            }
            
            NavigationLink(destination: CartView()) {
                
                Button(action: {
                    self.showDetail.toggle()
                }) {
                    
                    Text("К оплате \(booking.getTotalPrice())")
                        .font(.custom("SF-Pro-Display-Light.otf", size: 16))
                        .foregroundColor(.white)
                }
                .frame(width: 343, height: 48)
                .background(Color.blue)
                .cornerRadius(15)
            }
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.white)
        .cornerRadius(15)
        .shadow(radius: 1)
    }
}



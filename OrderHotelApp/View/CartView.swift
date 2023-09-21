//
//  CartView.swift
//  OrderHotelApp
//
//  Created by Константин Евсюков on 18.09.2023.
//

import SwiftUI

struct CartView: View {
    @State var showDetailView = false
    @Environment(\.dismiss) var backButton
    
    var body: some View {
        
        ZStack {
            
            NavigationView {
                
                VStack {
                    
                    VStack(alignment: .center, spacing: 20) {
                        
                        Image("great")
                        
                        Text("Ваш заказ принят в работу")
                            .font(.custom("SF-Pro-Display-Bold.otf", size: 22))
                            
                        Text("Подтверждение заказа №104893 может занять некоторое время (от 1 часа до суток). Как только мы получим ответ от туроператора, вам на почту придет уведомление.")
                            .font(.custom("SF-Pro-Display-Light.otf", size: 16))
                            .foregroundColor(.gray)
                            .multilineTextAlignment(.center)
                    }
                    .padding(.all, 20)
                    .padding(.bottom, 120)
                    
                    NavigationLink(destination: HomeView()) {
                        
                        Button {
                            self.showDetailView.toggle()
                        } label: {
                            Text("Супер!")
                                .font(.custom("SF-Pro-Display-Light.otf", size: 16))
                                .foregroundColor(.white)
                        }
                        .frame(width: 343, height: 48)
                        .background(Color.blue)
                        .cornerRadius(15)

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
                        
                        Text("Заказ оплачен")
                            .font(.custom("SF-Pro-Display-Bold.otf", size: 18))
                    }
                })
            }
            .navigationBarBackButtonHidden(true)
        }
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
    }
}

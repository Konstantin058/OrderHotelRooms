//
//  RoomView.swift
//  OrderHotelApp
//
//  Created by Константин Евсюков on 07.09.2023.
//

import SwiftUI

struct RoomsView: View {
    @StateObject var rooms = RoomViewModel()
    @State var showDetailView = false
    @Environment(\.dismiss) var backButton
    
    var body: some View {
        
        ZStack {
            
            NavigationView {
                
                VStack {
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        
                        VStack {
                            
                            ForEach(rooms.rooms) { room in
                                RoomView(rooms: room)
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
                })
                .onAppear {
                    rooms.fetchRoom()
                }
            }
            .navigationBarBackButtonHidden(true)
        }
    }
}

struct RoomsView_Previews: PreviewProvider {
    static var previews: some View {
        RoomsView()
    }
}

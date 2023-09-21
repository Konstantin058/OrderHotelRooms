//
//  RoomsImageView.swift
//  OrderHotelApp
//
//  Created by Константин Евсюков on 07.09.2023.
//

import SwiftUI

struct RoomsImageView: View {
    let imageUrl: String
    
    var body: some View {
            AsyncImage(url: URL(string: imageUrl)) { phase in
                switch phase {
                    case .failure:
                        Color.red
                            .frame(width: 343, height: 257) .clipShape(RoundedRectangle(cornerRadius: 25))
                    case .success(let image):
                        image
                            .resizable()
                            .frame(width: 343, height: 257) .clipShape(RoundedRectangle(cornerRadius: 25))
                    default:
                        ProgressView()
                            .frame(width: 343, height: 257) .clipShape(RoundedRectangle(cornerRadius: 25))
                }
            }
    }
}


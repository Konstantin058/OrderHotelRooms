//
//  InfoList.swift
//  OrderHotelApp
//
//  Created by Константин Евсюков on 21.09.2023.
//

import Foundation

struct InfoList: Identifiable {
    let id: Int
    let image: String
    let title: String
    let description: String
}

extension InfoList {
    
    static var infoList = [
        InfoList(id: 0, image: "", title: "Самое необходимое", description: "Самое необходимое"),
        InfoList(id: 1, image: "", title: "Что включено", description: "Самое необходимое"),
        InfoList(id: 2, image: "", title: "Что не включено", description: "Самое необходимое"),
    ]
}

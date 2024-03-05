//
//  Item.swift
//  SwiftMVVMPattern
//
//  Created by 정민지 on 3/5/24.
//

import Foundation

//섹션과 아이템 정의
struct Section: Hashable {
    let id: String
}

enum Item: Hashable {
    case banner(HomeItem)
    case normalCarousel(HomeItem)
    case listCarousel(HomeItem)
}

struct HomeItem: Hashable {
    let title: String
    let subTitle: String?
    let imageUrl: String
    
    init(title: String, subTitle: String? = "", imageUrl: String) {
        self.title = title
        self.subTitle = subTitle
        self.imageUrl = imageUrl
    }
}

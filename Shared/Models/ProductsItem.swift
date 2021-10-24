//
//  Course.swift
//  store-swiftUI-seservice
//
//  Created by Алишер Алсейт on 24.10.2021.
//

import SwiftUI


struct ProductsItem: Decodable, Identifiable {
    let id: Int
    let title: String
    let description: String
    let price: Double
    let rating: Double
    let imageURL: String

}
//
//struct ProductsItem: Identifiable, Hashable  {
//    let id = UUID()
//    let title: String
//    let description: String
//    let price: Double
//    let rating: Double
//    let imageURL: String
//    let color: Color
//
//}
//
//var products = [
//    ProductsItem(
//        title: "Iphone XR",
//        description: "Iphone XR description",
//        price: 599.99,
//        rating: 4.5,
//        imageURL: "https://object.pscloud.io/cms/cms/Photo/img_0_77_2752_3_1.jpg",
//        color: Color(#colorLiteral(red: 0, green: 0.5217629075, blue: 1, alpha: 1))
//    ),
//
//    ProductsItem(
//        title: "Iphone 13",
//        description: "Iphone 13 description",
//        price: 799.99,
//        rating: 5.0,
//        imageURL: "https://object.pscloud.io/cms/cms/Photo/img_0_77_1698_2_320.webp",
//        color: Color(#colorLiteral(red: 0, green: 0.5217629075, blue: 1, alpha: 1))
//    ),
//    ProductsItem(
//        title: "Iphone 12",
//        description: "Iphone 12 description",
//        price: 699.99,
//        rating: 5.0,
//        imageURL: "https://assets.swappie.com/cdn-cgi/image/width=600,height=600,fit=contain,format=auto/iphone11provihreaCC88-600x600.jpg",
//        color: Color(#colorLiteral(red: 0, green: 0.5217629075, blue: 1, alpha: 1))
//    ),
//
//
//]
//

//
//  ViewModel.swift
//  store-swiftUI-seservice
//
//  Created by Алишер Алсейт on 24.10.2021.
//

import SwiftUI

class ViewModel: ObservableObject {

    @Published var products = [ProductsItem]()
    @Published var id = 1

    init() {
        fetchProducts(id: id)
    }



    func fetchProducts(id: Int) {
    guard let url = URL(string: "http://localhost:8080/catalog/") else {
        return
    }

    URLSession.shared.dataTask(with: url) { data, res, err in

        if let err = err {
            print("Failed to fetch posts:", err)
            return
        }

        guard let data = data else { return}


        do {
            let products = try JSONDecoder().decode([ProductsItem].self , from: data)

            DispatchQueue.main.async {
                self.products = products
            }

        } catch let JsonError {
            print("fetch json error:", JsonError.localizedDescription)
            print(String(describing: JsonError))
        }


    }.resume()
}
}

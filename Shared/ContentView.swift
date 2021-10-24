//
//  ContentView.swift
//  Shared
//
//  Created by Алишер Алсейт on 24.10.2021.
//


import SwiftUI



struct ContentView: View {
    @ObservedObject var model = ViewModel()
    @State private var searchText = ""
    var body: some View {
        
        ScrollView {
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 160), spacing: 16)], spacing: 16 ) {
                ForEach(model.products) { item in
                    VStack {
                        ProductItemView(product: item)
                            .frame(height: 200)
                           
                            
                    }
                   
                    
                }
                
            }
            .padding(16)
            .frame(maxWidth: .infinity)
            }
        }
        
    
        
       
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



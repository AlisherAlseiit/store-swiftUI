//
//  CourseItems.swift
//  CourseApp
//
//  Created by Алишер Алсейт on 22.09.2021.
//

import SwiftUI

struct ProductItemView: View {
    var product: ProductsItem
    
    var cornerRadius: CGFloat = 22
    
    var body: some View {
        VStack (alignment: .leading, spacing: 4){
            Spacer()
            
            HStack {
                Spacer()
                AsyncImage(url: URL(string: product.imageURL)) { image in
                    image.resizable()
                } placeholder: {
                    Image(systemName: "photo")
                        
                        
                }
                .frame(width: 100, height: 100)
                    
                Spacer()
            }
            
            Text(product.title)
                .fontWeight(.bold)
                .foregroundColor(Color.white)
                
            Text(product.description)
                .font(.footnote)
                .foregroundColor(Color.white)
        }
        .padding(.all)
        .background(Color(#colorLiteral(red: 0.3150139749, green: 0, blue: 0.8982304931, alpha: 1)))
        .clipShape(RoundedRectangle(cornerRadius: cornerRadius, style: .continuous))
        .shadow(color: Color.blue.opacity(0.3), radius:20, x:0, y:10)
    }
}



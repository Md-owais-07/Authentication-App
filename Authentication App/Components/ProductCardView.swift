//
//  ProductCardView.swift
//  Authentication App
//
//  Created by Mohammad Owais on 11/03/24.
//

import SwiftUI

struct ProductCardView: View {
    var product: Product
    
    var body: some View {
        ZStack {
            Color(.systemGray6)
            
            ZStack(alignment: .bottomTrailing) {
                VStack(alignment: .leading) {
                    Image(product.image)
                        .resizable()
                        .frame(width: 165, height: 150)
                        .cornerRadius(12)
                    
                    Text(product.name)
                        .font(.headline)
                        .foregroundStyle(.black)
                        .padding(.vertical, 1)
                    
                    Text("$ \(product.price)")
                        .foregroundColor(.gray)
                        .bold()
                }
                
                Button {
                    //
                } label:{
                    Image(systemName: "bag.badge.plus")
                        .resizable()
                        .foregroundColor(Color("textColor"))
                        .frame(width: 25, height: 25)
                }
            }
        }
        .frame(width: 185, height: 240)
//        .cornerRadius(10)
        }
    }


#Preview {
    ProductCardView(product: productList[0])
}

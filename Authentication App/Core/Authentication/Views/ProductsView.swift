//
//  ProductsView.swift
//  Authentication App
//
//  Created by Mohammad Owais on 11/03/24.
//

import SwiftUI

struct ProductsView: View {
    var column = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    
    var body: some View {
        NavigationStack {
            ScrollView() {
                LazyVGrid(columns: column, spacing: 20) {
                    ForEach(productList, id: \.id) { product in
                        ProductCardView(product: product)
                    }
                    .padding()
                }
                .padding(10)
            }
        }
    }
}

#Preview {
    ProductsView()
}

//
//  HomeView.swift
//  Authentication App
//
//  Created by Mohammad Owais on 10/03/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            NavigationStack {
                ScrollView {
                    HStack {
                        HeaderView()
                    }
                    .padding(.top)
                    
                    VStack {
                        ImageSliderView()
                    }
                    VStack {
                        
                        Text("   Fashion\nCustomize")
                            .font(.system(size: 40))
                            .fontWeight(.bold)
                        
                        Text("Discover Your uniqueness")
                            .font(.footnote)
                    }
                    
                    HStack {
                        ProductsView()
                    }
                    
                    Spacer()
                }
                .scrollIndicators(.hidden)
            }
        }
    }
}

#Preview {
    HomeView()
}

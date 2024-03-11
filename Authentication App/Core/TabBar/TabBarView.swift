//
//  HomePageView.swift
//  Authentication App
//
//  Created by Mohammad Owais on 10/03/24.
//

import SwiftUI

struct TabBarView: View {
    @EnvironmentObject var viewModel: AuthViewModel
    @State private var selectedTab = 1
    
    var body: some View {
        ZStack {
            TabView(selection: $selectedTab) {
                HomeView()
                    .tabItem {
                        Label("Home", systemImage: "house")
                    }
                    .tag(1)

                CategoryView()
                    .tabItem {
                        Label("Category", systemImage: "cube")
                    }
                    .tag(2)
                
                OfferView()
                    .tabItem {
                        Label("Offer", systemImage: "tag")
                    }
                    .tag(3)
                
                ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person")
                }
                .tag(4)
            }
        }
    }
}

#Preview {
    TabBarView()
        .environmentObject(AuthViewModel())
}

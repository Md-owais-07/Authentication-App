//
//  HeaderView.swift
//  Authentication App
//
//  Created by Mohammad Owais on 11/03/24.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        
        NavigationStack {
            HStack(alignment: .center) {
                
                Image(systemName: "line.horizontal.3")
                    .padding()
                Spacer()
                
                Text("LOGO")
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                    .padding(.vertical)
                    .padding(.leading, 50)
                Spacer()
                
                HStack(spacing: 12) {
                    NavigationLink(
                        destination: Text("Add To Cart View"),
                        label: {
                            Image(systemName: "bag")
                        })
                    
                    NavigationLink(
                        destination: Text("Search Item View"),
                        label: {
                            Image(systemName: "magnifyingglass")
                        })
                    
                    NavigationLink(
                        destination: Text("Favourite Item View"),
                        label: {
                            Image(systemName: "heart")
                        })
                }
                .accentColor(.black)
                .padding()
            }
            .padding(.horizontal, 2)
            .frame(maxWidth: .infinity)
            .background(Color(.systemGray6))
        .fontWeight(.semibold)
        }
    }
}

#Preview {
    HeaderView()
}

//
//  ProfileView.swift
//  Authentication App
//
//  Created by Mohammad Owais on 10/03/24.
//

import SwiftUI

struct ProfileView: View {
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        if let user = viewModel.currentUser {
            List {
                Section {
                    HStack {
                        Text(user.initials)
                            .font(.title)
                            .fontWeight(.semibold)
                            .foregroundStyle(.white)
                            .frame(width: 70, height: 70)
                            .background(Color(.systemGray3))
                            .clipShape(Circle())
                        
                        VStack(alignment: .leading, spacing: 4) {
                            Text(user.fullname)
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .padding(.top, 2)
                            
                            Text(user.email)
                                .font(.footnote)
                                .foregroundStyle(.gray)
                        }
                    }
                }
                
                Section("General") {
                    HStack {
                        SettingView(imageName: "gear",
                                    title: "Version",
                                    tintColor: Color(.systemGray))
                        Spacer()
                        
                        Text("1.0.0")
                            .font(.subheadline)
                            .foregroundStyle(.gray)
                    }
                }
                
                Section("Account") {
                    Button(action: {
                        viewModel.logOut()
                        
                    }, label: {
                        SettingView(imageName: "arrow.left.circle.fill",
                                    title: "Sign Out",
                                    tintColor: .red)
                    })
                    
                    Button(action: {
                        viewModel.deleteAccount()
                    }, label: {
                        SettingView(imageName: "xmark.circle.fill",
                                    title: "Delete Account",
                                    tintColor: .red)
                    })
                }
            }
        } else {
            ProgressView()
        }
    }
}

#Preview {
    ProfileView()
        .environmentObject(AuthViewModel())
}

//
//  RegisterView.swift
//  Authentication App
//
//  Created by Mohammad Owais on 10/03/24.
//

import SwiftUI

struct RegisterView: View {
    @State private var fullname: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var confirmPass: String = ""
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        VStack {
            //Image
            Image("log")
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 100)
                .padding(.vertical, 30)
            
            //Form
            VStack(spacing: 25) {
                InputView(text: $fullname,
                          title: "Full Name",
                          placeholder: "demo12@gmail.com")
                .autocapitalization(.none)
                InputView(text: $email,
                          title: "Email Address",
                          placeholder: "demo12@gmail.com")
                .autocapitalization(.none)
                InputView(text: $password,
                          title: "Paassword",
                          placeholder: "Enter your password",
                          isSecureField: true)
                ZStack(alignment: .trailing) {
                    InputView(text: $confirmPass,
                              title: "Confirm Paassword",
                              placeholder: "Enter your password",
                              isSecureField: true)
                    
                    if !password.isEmpty && !confirmPass.isEmpty {
                        if password == confirmPass {
                            Image(systemName: "checkmark.circle.fill")
                                .imageScale(.large)
                                .fontWeight(.bold)
                                .foregroundStyle(Color(.systemGreen))
                        } else {
                            Image(systemName: "xmark.circle.fill")
                                .imageScale(.large)
                                .fontWeight(.bold)
                                .foregroundStyle(Color(.systemRed))
                        }
                    }
                }
            }
            .padding(.horizontal)
            .padding(.top, 12)
            
            //SignIn Button
            Button(action: {
                Task {
                    try await viewModel.register(withEmail: email,
                                                   password: password,
                                                   fullName: fullname)
                }
            }, label: {
                HStack {
                    Text("Register")
                        .fontWeight(.semibold)
                    if !password.isEmpty && !confirmPass.isEmpty {
                        if password == confirmPass {
                            Image(systemName: "arrow.right")
                        } else {
                            Image(systemName: "wrongwaysign.fill")
                        }
                    }
                }
                .foregroundStyle(.white)
                .frame(width: UIScreen.main.bounds.width - 35, height: 48)
            })
            .background(Color.blue)
            .disabled(!formIsValid)
            .opacity(formIsValid ? 1.0 : 0.5)
            .cornerRadius(10)
            .padding(.top, 24)
            
            Spacer()
            
            //Signup Button
            Button(action: {
                dismiss()
            }, label: {
                HStack(spacing: 3) {
                    Text("Already have an account?")
                    Text("Log in")
                        .fontWeight(.bold)
                }
                .font(.system(size: 14))
            })
        }
    }
}

extension RegisterView: AuthenticationFormProtocol {
    var formIsValid: Bool {
        return !email.isEmpty
        && email.contains("@")
        && !password.isEmpty
        && password.count > 5
        && confirmPass == password
        && !password.isEmpty
    }
}

#Preview {
    RegisterView()
}

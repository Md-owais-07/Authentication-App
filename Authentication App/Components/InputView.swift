//
//  InputView.swift
//  Authentication App
//
//  Created by Mohammad Owais on 10/03/24.
//

import SwiftUI

struct InputView: View {
    @Binding var text: String
    let title: String
    let placeholder: String
    var isSecureField: Bool = false
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text(title)
                .foregroundStyle(.black)
                .fontWeight(.semibold)
                .font(.footnote)
            
            if isSecureField {
                SecureField(placeholder, text: $text)
                    .font(.system(size: 15))
            } else {
                TextField(placeholder, text: $text)
                    .font(.system(size: 15))
            }
            Divider()
        }
    }
}

#Preview {
    InputView(text: .constant(""), title: "Email address", placeholder: "demo12@gmail.com")
}

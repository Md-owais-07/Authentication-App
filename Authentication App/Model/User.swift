//
//  User.swift
//  Authentication App
//
//  Created by Mohammad Owais on 10/03/24.
//

import Foundation

struct User: Identifiable, Codable {
    let id: String
    let fullname: String
    let email: String
    
    var initials: String {
        let formatter = PersonNameComponentsFormatter()
        if let components = formatter.personNameComponents(from: fullname) {
            formatter.style = .abbreviated
            return formatter.string(from: components)
        }
        return ""
    }
}

extension User {
    static var Mock_User = User(id: NSUUID().uuidString, fullname: "Demo Name", email: "demo12@gmail.com")
}

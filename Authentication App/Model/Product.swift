//
//  Product.swift
//  Authentication App
//
//  Created by Mohammad Owais on 11/03/24.
//

import Foundation

struct Product: Identifiable, Codable {
    var id: String = UUID().uuidString
    var name :String
    var price: String
    var image: String
}

var productList = [
    Product(name: "Demo 1", 
            price: "$200",
            image: "img1"),
    Product(name: "Demo 2",
            price: "$300",
            image: "img2"),
    Product(name: "Demo 1",
            price: "$200",
            image: "img1"),
    Product(name: "Demo 1",
            price: "$200",
            image: "img1"),
    Product(name: "Demo 1",
            price: "$200",
            image: "img1"),
    Product(name: "Demo 1",
            price: "$200",
            image: "img1"),
]

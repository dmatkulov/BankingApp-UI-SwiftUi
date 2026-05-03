//
//  User.swift
//  BankApp
//
//  Created by Dilshad Matkulov on 3/5/26.
//
import SwiftUI

struct User: Identifiable, Hashable {
    var id: UUID = UUID()
    var name: String
    var image: String
    
    static var mockData: [User] {
        [
            User(name: "James", image: "user-01"),
            User(name: "Blake", image: "user-02"),
            User(name: "Jake", image: "user-03"),
            User(name: "Luke", image: "user-04"),
            User(name: "Jack", image: "user-05")
        ]
    }
}

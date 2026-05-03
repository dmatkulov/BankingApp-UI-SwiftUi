//
//  Payment.swift
//  BankApp
//
//  Created by Dilshad Matkulov on 3/5/26.
//

import SwiftUI

struct Payment: Identifiable, Hashable {
    var id: UUID = UUID()
    var name: String
    var amount: String
    var date: String
    var image: String
    
    static var mockData: [Payment] {
        [
            Payment(name: "PayPal", amount: "+$89.00", date: "Monday, 10th March", image: "paypal"),
            Payment(name: "Amazon", amount: "+$69.00", date: "Monday, 10th March", image: "amazon")
        ]
    }
        
}

//
//  ActivityItem.swift
//  BankApp
//
//  Created by Dilshad Matkulov on 3/5/26.
//
import SwiftUI

struct ActivityItem: View {
    var payment: Payment
    var body: some View {
       HStack {
           HStack{
               ZStack{
                   Circle()
                       .fill(Color(hex: "3F463A"))
                       .frame(width: 52, height: 52)
                   Image(payment.image)
                       .resizable()
                       .frame(width: 28, height: 28)
               }
               
               VStack(alignment: .leading) {
                   Text(payment.name)
                       .font(type: .medium, size: 20)
                   Text(payment.date)
                       .foregroundStyle(Color(hex: "#B5B7B2"))
                   
               }
           }
           Spacer()
           Text(payment.amount)
               .font(type: .medium, size: 20)
        }
       .foregroundStyle(.white)
    }
}

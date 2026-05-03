//
//  UserView.swift
//  BankApp
//
//  Created by Dilshad Matkulov on 3/5/26.
//
import SwiftUI

struct UserView: View {
    var user: User
    var body: some View {
        Button{
            print("\(user.name) clicked")
        } label: {
            VStack{
                Image(user.image)
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                Text(user.name)
                    .font(type: .regular, size: 14)
                    .foregroundStyle(Color(hex: "#B5B7B2"))
            }
        }
    }
}

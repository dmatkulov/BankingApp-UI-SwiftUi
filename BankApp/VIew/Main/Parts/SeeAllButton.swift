//
//  SeeAllButton.swift
//  BankApp
//
//  Created by Dilshad Matkulov on 3/5/26.
//

import SwiftUI


struct SeeAllButton: View {
    var body: some View {
        Button {
            print("See all is clicked")
        } label: {
            HStack(spacing: 7){
                Text("See all")
                Image(systemName: "chevron.down")
            }
            .font(type: .regular, size: 16)
            .foregroundStyle(Color(hex: "#B5B7B2"))
        }
    }
}

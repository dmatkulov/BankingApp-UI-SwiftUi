//
//  Font.ext.swift
//  BankApp
//
//  Created by Dilshad Matkulov on 28/4/26.
//


import SwiftUI

extension View{
    func font(type: Inter, size: CGFloat = 16) -> some View{
        self
            .font(.custom(type.rawValue, size: size))
    }
}


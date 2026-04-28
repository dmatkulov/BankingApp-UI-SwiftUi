//
//  PageHeader.swift
//  BankApp
//
//  Created by Dilshad Matkulov on 28/4/26.
//

import SwiftUI

struct PageHeader: View {
    var body: some View {
        HStack{
            Button{
                
            } label: {
                Image(.ava)
                    .resizable()
                    .frame(width: 60, height: 60)
                    .clipShape(Circle())
            }
            
            Spacer()
            
            HStack(spacing: 10){
                Button{
                    //
                } label: {
                    ZStack{
                        Circle()
                            .fill(Color(hex: "f9f9f9"))
                            .frame(width: 60, height: 60)
                        Image(systemName: "magnifyingglass")
                            .resizable()
                            .frame(width: 24, height: 24)
                            .foregroundStyle(.black)
                    }

                }
                
                Button{
                    //
                } label: {
                    ZStack{
                        Circle()
                            .fill(Color(hex: "f9f9f9"))
                            .frame(width: 60, height: 60)
                        Image(systemName: "bell")
                            .resizable()
                            .frame(width: 24, height: 24)
                            .foregroundStyle(.black)
                    }
                }
            }
        }
    }
}

//
//  ContentView.swift
//  BankApp
//
//  Created by Dilshad Matkulov on 27/4/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView{
            VStack(alignment: .leading){
                VStack(alignment: .leading, spacing: 24){
                    PageHeader()
                    VStack(alignment: .leading, spacing: 4){
                        Text("Welcome Back 👋")
                            .foregroundStyle(Color(hex: "#B5B7B2"))
                            .font(type: .regular, size: 22)
                        Text("Smart Solutions for Smart Money.")
                            .font(type: .medium, size: 46)
                    }
                    .foregroundStyle(.white)
                    
                    ZStack(alignment: .bottomTrailing){
                        CardViewContent()
                            .background(
                                LinearGradient(
                                        colors: [
                                            Color(hex: "#29301C"),
                                        Color(hex: "##3F4638")
                                        ],
                                        startPoint: UnitPoint.top,
                                        endPoint: UnitPoint.bottom)
                                )
                            .clipShape(CardView(cornerRadius: 20, notchRadius: 20))
                            .frame(minHeight: 230)
                        AddButtonView()
                    }
                    
                    VStack(alignment: .leading, spacing: 18) {
                        HStack{
                            Text("Quick Send")
                                .font(type: .medium, size: 20)
                                .foregroundStyle(.white)
                            Spacer()
                            SeeAllButton()
                        }
                        
                        HStack{
                            ForEach(User.mockData) { user in
                                UserView(user: user)
                                    .frame(maxWidth: .infinity)
                            }
                        }
                    }
                    .padding(20)
                    .background(Color(hex: "##2F352A"))
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    
                    VStack(alignment: .leading){
                        HStack{
                            Text("Recent Transactions")
                                .font(type: .medium, size: 20)
                                .foregroundStyle(.white)
                            Spacer()
                            SeeAllButton()
                        }
                        VStack(alignment: .leading, spacing: 20){
                            ForEach(Payment.mockData) { payment in
                                ActivityItem(payment: payment)
                                Divider()
                                    .background(.gray)
                            }
                        }
                        .padding(20)
                        .frame(maxWidth: .infinity)
                        .background(Color(hex: "##2F352A"))
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .overlay(alignment: .top) {
                            CutView()
                                .fill(.mainBG)
                                .frame(width: 50, height: 10)
                                .overlay{
                                    RoundedRectangle(cornerRadius: 10)
                                        .fill(Color(hex: "##2F352A"))
                                        .frame(width: 20, height: 1)
                                }
                        }
                    }
                    
                    
                }
            }
            .padding(EdgeInsets(top: 20, leading: 20, bottom: 20, trailing: 10))
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.mainBG)
    }
}

#Preview {
    ContentView()
}




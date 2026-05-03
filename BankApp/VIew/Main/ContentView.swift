//
//  ContentView.swift
//  BankApp
//
//  Created by Dilshad Matkulov on 27/4/26.
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
                    
                    VStack(alignment: .leading) {
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

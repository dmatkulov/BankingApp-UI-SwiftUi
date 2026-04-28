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
                PageHeader()
            }
            .padding(.horizontal, 20)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.mainBG)
    }
}

#Preview {
    ContentView()
}

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
            
            HStack{
                Button{
                    //
                } label: {
                    ZStack{
                        Circle()
                            .fill(.white)
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
                            .fill(.white)
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

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
                    
                    MyShape()
                        .fill(
                            LinearGradient(
                                    colors: [
                                        Color(hex: "#29301C"),
                                    Color(hex: "##3F4638")
                                    ],
                                    startPoint: UnitPoint.top,
                                    endPoint: UnitPoint.bottom)
                            )
                        .frame(height: 230)
                    
                    
                }
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


struct MyShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.93158*width, y: 0))
        path.addCurve(to: CGPoint(x: width, y: 0.11304*height), control1: CGPoint(x: 0.96937*width, y: 0), control2: CGPoint(x: width, y: 0.05061*height))
        path.addLine(to: CGPoint(x: width, y: 0.75217*height))
        path.addCurve(to: CGPoint(x: 0.96579*width, y: 0.8087*height), control1: CGPoint(x: width, y: 0.78339*height), control2: CGPoint(x: 0.98468*width, y: 0.8087*height))
        path.addLine(to: CGPoint(x: 0.72842*width, y: 0.8087*height))
        path.addCurve(to: CGPoint(x: 0.694*width, y: 0.8382*height), control1: CGPoint(x: 0.71473*width, y: 0.8087*height), control2: CGPoint(x: 0.70189*width, y: 0.8197*height))
        path.addLine(to: CGPoint(x: 0.63758*width, y: 0.9705*height))
        path.addCurve(to: CGPoint(x: 0.60316*width, y: height), control1: CGPoint(x: 0.62969*width, y: 0.989*height), control2: CGPoint(x: 0.61685*width, y: height))
        path.addLine(to: CGPoint(x: 0.06842*width, y: height))
        path.addCurve(to: CGPoint(x: 0, y: 0.88696*height), control1: CGPoint(x: 0.03063*width, y: height), control2: CGPoint(x: 0, y: 0.94939*height))
        path.addLine(to: CGPoint(x: 0, y: 0.11304*height))
        path.addCurve(to: CGPoint(x: 0.06842*width, y: 0), control1: CGPoint(x: 0, y: 0.05061*height), control2: CGPoint(x: 0.03063*width, y: 0))
        path.addLine(to: CGPoint(x: 0.93158*width, y: 0))
        path.closeSubpath()
        return path
    }
}

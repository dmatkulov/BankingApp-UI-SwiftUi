//
//  CutView.swift
//  BankApp
//
//  Created by Dilshad Matkulov on 3/5/26.
//

import SwiftUI

struct CutView: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.78993*width, y: 0.7087*height))
        path.addCurve(to: CGPoint(x: 0.69209*width, y: height), control1: CGPoint(x: 0.76931*width, y: 0.88942*height), control2: CGPoint(x: 0.73217*width, y: height))
        path.addLine(to: CGPoint(x: 0.30791*width, y: height))
        path.addCurve(to: CGPoint(x: 0.21007*width, y: 0.7087*height), control1: CGPoint(x: 0.26783*width, y: height), control2: CGPoint(x: 0.23069*width, y: 0.88942*height))
        path.addLine(to: CGPoint(x: 0.19568*width, y: 0.58261*height))
        path.addCurve(to: CGPoint(x: 0, y: 0), control1: CGPoint(x: 0.15444*width, y: 0.22116*height), control2: CGPoint(x: 0.08016*width, y: 0))
        path.addLine(to: CGPoint(x: width, y: 0))
        path.addCurve(to: CGPoint(x: 0.80432*width, y: 0.58261*height), control1: CGPoint(x: 0.91984*width, y: 0), control2: CGPoint(x: 0.84556*width, y: 0.22116*height))
        path.addLine(to: CGPoint(x: 0.78993*width, y: 0.7087*height))
        path.closeSubpath()
        return path
    }
}

//
//  CardView.swift
//  BankApp
//
//  Created by Dilshad Matkulov on 29/4/26.
//
import SwiftUI

struct CardView: Shape {
    var cornerRadius: CGFloat = 16
       var notchRadius: CGFloat = 10  // отдельный радиус для выреза

       func path(in rect: CGRect) -> Path {
           var path = Path()
           let w = rect.width
           let h = rect.height
           let r = cornerRadius
           let nr = notchRadius

           let notchX1 = 0.70658 * w
           let notchY  = 0.8087  * h
           let notchX2 = 0.625   * w

           // Верхний левый угол
           path.move(to: CGPoint(x: 0, y: r))
           path.addArc(center: CGPoint(x: r, y: r),
                       radius: r,
                       startAngle: .degrees(180),
                       endAngle: .degrees(270),
                       clockwise: false)

           // Верхний правый угол
           path.addLine(to: CGPoint(x: w - r, y: 0))
           path.addArc(center: CGPoint(x: w - r, y: r),
                       radius: r,
                       startAngle: .degrees(270),
                       endAngle: .degrees(0),
                       clockwise: false)

           // Правая сторона вниз до выреза
           path.addLine(to: CGPoint(x: w, y: notchY - nr))
                   path.addArc(tangent1End: CGPoint(x: w, y: notchY),
                               tangent2End: CGPoint(x: notchX1, y: notchY),
                               radius: nr)

           // Скругление угла выреза 1: горизонталь → диагональ
           path.addArc(tangent1End: CGPoint(x: notchX1, y: notchY),
                       tangent2End: CGPoint(x: notchX2, y: h),
                       radius: nr)

           // Скругление угла выреза 2: диагональ → низ
           path.addArc(tangent1End: CGPoint(x: notchX2, y: h),
                       tangent2End: CGPoint(x: 0, y: h),
                       radius: nr)

           // Нижний левый угол
           path.addLine(to: CGPoint(x: r, y: h))
           path.addArc(center: CGPoint(x: r, y: h - r),
                       radius: r,
                       startAngle: .degrees(90),
                       endAngle: .degrees(180),
                       clockwise: false)

           path.closeSubpath()
           return path
       }
}

//    func path(in rect: CGRect) -> Path {
//        var path = Path()
//        let width = rect.size.width
//        let height = rect.size.height
//        path.move(to: CGPoint(x: 0.93158*width, y: 0))
//        path.addCurve(to: CGPoint(x: width, y: 0.11304*height), control1: CGPoint(x: 0.96937*width, y: 0), control2: CGPoint(x: width, y: 0.05061*height))
//        path.addLine(to: CGPoint(x: width, y: 0.75217*height))
//        path.addCurve(to: CGPoint(x: 0.96579*width, y: 0.8087*height), control1: CGPoint(x: width, y: 0.78339*height), control2: CGPoint(x: 0.98468*width, y: 0.8087*height))
//        path.addLine(to: CGPoint(x: 0.72842*width, y: 0.8087*height))
//        path.addCurve(to: CGPoint(x: 0.694*width, y: 0.8382*height), control1: CGPoint(x: 0.71473*width, y: 0.8087*height), control2: CGPoint(x: 0.70189*width, y: 0.8197*height))
//        path.addLine(to: CGPoint(x: 0.63758*width, y: 0.9705*height))
//        path.addCurve(to: CGPoint(x: 0.60316*width, y: height), control1: CGPoint(x: 0.62969*width, y: 0.989*height), control2: CGPoint(x: 0.61685*width, y: height))
//        path.addLine(to: CGPoint(x: 0.06842*width, y: height))
//        path.addCurve(to: CGPoint(x: 0, y: 0.88696*height), control1: CGPoint(x: 0.03063*width, y: height), control2: CGPoint(x: 0, y: 0.94939*height))
//        path.addLine(to: CGPoint(x: 0, y: 0.11304*height))
//        path.addCurve(to: CGPoint(x: 0.06842*width, y: 0), control1: CGPoint(x: 0, y: 0.05061*height), control2: CGPoint(x: 0.03063*width, y: 0))
//        path.addLine(to: CGPoint(x: 0.93158*width, y: 0))
//        path.closeSubpath()
//        return path
//    }

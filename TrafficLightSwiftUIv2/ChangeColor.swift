//
//  ChangeColor.swift
//  TrafficLightSwiftUIv2
//
//  Created by Igor Makeev on 27.07.2021.
//

import SwiftUI

struct ChangeColor: View {
    
    let color: Color
    let opacity: Double
    
    var body: some View {
        ZStack{
            Circle()
                .foregroundColor(color)
                .opacity(opacity)
                .padding(20)
            Circle()
                .foregroundColor(color)
                .opacity(opacity)
                .padding(30)
            Circle()
                .foregroundColor(color)
                .opacity(opacity)
                .padding(40)
            Circle()
                .foregroundColor(color)
                .opacity(opacity)
                .padding(50)
            Circle()
                .foregroundColor(color)
                .opacity(opacity)
                .padding(60)
            Circle()
                .foregroundColor(color)
                .opacity(opacity)
                .padding(70)
            Circle()
                .foregroundColor(color)
                .opacity(opacity)
                .padding(80)
                .overlay(Circle().stroke(Color.white, lineWidth: 5))
            
        }
        .frame(width: 200, height: 200)
    }
}

struct ChangeColor_Previews: PreviewProvider {
    static var previews: some View {
        ChangeColor(color: .red, opacity: 1.0)
    }
}

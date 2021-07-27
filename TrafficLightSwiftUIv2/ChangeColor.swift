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
        VStack{
            Circle()
                .frame(width: 150, height: 150)
                .foregroundColor(color)
                .opacity(opacity)
                
        }
    }
}

struct ChangeColor_Previews: PreviewProvider {
    static var previews: some View {
        ChangeColor(color: .red, opacity: 1.0)
    }
}

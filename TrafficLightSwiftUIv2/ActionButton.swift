//
//  ActionButton.swift
//  TrafficLightSwiftUIv2
//
//  Created by Igor Makeev on 27.07.2021.
//

import SwiftUI

struct ActionButton: View {
    
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.system(size: 60, weight: .light))
                .foregroundColor(.white)
                .frame(width: 250, height: 100)
                .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.yellow, Color.green]), startPoint: .leading, endPoint: .trailing))
                .cornerRadius(30)
                .padding(.top, 90)
        }
    }
}

struct ActionButton_Previews: PreviewProvider {
    static var previews: some View {
        ActionButton(title: "Start", action: {})
    }
}

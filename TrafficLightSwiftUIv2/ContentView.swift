//
//  ContentView.swift
//  TrafficLightSwiftUIv2
//
//  Created by Igor Makeev on 27.07.2021.
//

import SwiftUI

enum CurrentLights {
    case red, yellow, green
}

struct ContentView: View {
    
    @State private var redLight = 0.3
    @State private var yellowLight = 0.3
    @State private var greenLight = 0.3
    @State private var currentLight = CurrentLights.red
    @State private var buttonTitle = "Start"
    @State private var lightOn = 1.0
    @State private var lightOff = 0.3
    
    
    private func changeColor() {
        
        switch currentLight {
        case .red:
            currentLight = .yellow
            redLight = lightOn
            greenLight = lightOff
        case .yellow:
            currentLight = .green
            yellowLight = lightOn
            redLight = lightOff
        case .green:
            currentLight = .red
            greenLight = lightOn
            yellowLight = lightOff
        }
    }
    
    var body: some View {
        VStack {
            ChangeColor(color: .red, opacity: redLight)
            ChangeColor(color: .yellow, opacity: yellowLight)
            ChangeColor(color: .green, opacity: greenLight)
            ActionButton(title: buttonTitle) {
                if buttonTitle == "Start" {
                    buttonTitle = "Next"
                }
                changeColor()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

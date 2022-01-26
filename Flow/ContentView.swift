//
//  ContentView.swift
//  Flow
//
//  Created by Manuel Schulze on 26.01.22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(
                colors: [
                    Color(red: 91/255.0, green: 195/255.0, blue: 190/255.0),
                    Color(red: 75/255.0, green: 26/255.0, blue: 111/255.0)
                ],
                startPoint: .topTrailing,
                endPoint: .bottomLeading
            )
            .edgesIgnoringSafeArea(.all)
            
            ZStack {
                ZStack {
                    Circle()
                        .stroke(Color(.sRGB, white: 1.0, opacity: 0.05), lineWidth: 6)
                    Circle()
                        .trim(from: 0.0, to: CGFloat(0.8))
                        .stroke(Color(.sRGB, red: 75/255.0, green: 26/255.0, blue: 111/255.0, opacity: 0.7), lineWidth: 6)
                        .saturation(<#T##amount: Double##Double#>)
                }
                .rotationEffect(Angle(degrees: -90))
                
                HStack(alignment: .top, spacing: 16.0) {
                    VStack(spacing: 4.0) {
                        Text("15")
                            .font(.largeTitle)
                        Text("Minutes")
                            .font(.caption2)
                    }
                    VStack {
                        Text(":")
                            .font(.largeTitle)
                    }
                    VStack(spacing: 4.0) {
                        Text("37")
                            .font(.largeTitle)
                        Text("Seconds")
                            .font(.caption2)
                    }
                }
                .foregroundColor(.white)
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

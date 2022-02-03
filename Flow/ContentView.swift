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
                    R.color.countdownBGStart.color,
                    R.color.countdownBGEnd.color
                ],
                startPoint: .topTrailing,
                endPoint: .bottomLeading
            )
            .edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer()
                
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
                .frame(width: 275, height: 275)
                .overlay(
                    ZStack {
                        Circle()
                            .stroke(R.color.countdownRingBG.color, lineWidth: 6)
                        Circle()
                            .trim(from: 0.0, to: CGFloat(0.8))
                            .stroke(R.color.countdownRingFG.color, lineWidth: 6)
                        
                        
                    }
                    .rotationEffect(Angle(degrees: -90))
                )
                
                Spacer()
                
                HStack {
                    Button(action: {
                        print("Play pressed")
                    }, label: {
                        Image(systemName: "play")
                            .foregroundColor(.white)
                    })
                    .padding()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

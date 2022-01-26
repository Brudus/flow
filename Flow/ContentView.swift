//
//  ContentView.swift
//  Flow
//
//  Created by Manuel Schulze on 26.01.22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            LinearGradient(
                colors: [
                    Color(red: 91/255.0, green: 195/255.0, blue: 190/255.0),
                    Color(red: 75/255.0, green: 26/255.0, blue: 111/255.0)
                ],
                startPoint: .topTrailing,
                endPoint: .bottomLeading
            )
            .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

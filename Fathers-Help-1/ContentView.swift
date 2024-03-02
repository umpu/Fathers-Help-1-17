//
//  ContentView.swift
//  Fathers-Help-1
//
//  Created by Andrei Gorbunov on 01.03.2024.
//

import SwiftUI

struct SubView: View {
    var rectangleSize: CGFloat = 50.0
    
    var body: some View {
        ZStack {
            ScrollView {
                ForEach(1..<101) {
                    Text("\($0)")
                        .font(.title)
                        .foregroundStyle(.gray)
                        .monospaced()
                }
                .frame(maxWidth: .infinity)
            }
            .contentMargins(.bottom, rectangleSize)
            
            VStack {
                Spacer()
                Rectangle()
                    .frame(height: rectangleSize)
                    .opacity(0.75)
                    .foregroundStyle(.red)
            }
        }
    }
}

struct ContentView: View {
    var body: some View {
        TabView {
            SubView()
                .tabItem {
                    Label("First", systemImage: "star.fill")
                }
        }
    }
}

#Preview {
    ContentView()
}

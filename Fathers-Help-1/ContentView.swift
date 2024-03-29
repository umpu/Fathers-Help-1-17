//
//  ContentView.swift
//  Fathers-Help-1
//
//  Created by Andrei Gorbunov on 01.03.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ScrollView {
                ForEach(1..<101) {
                    Text("\($0)")
                        .font(.title)
                        .foregroundStyle(.gray)
                        .monospaced()
                }
                .frame(maxWidth: .infinity)
            }
            .safeAreaInset(edge: .bottom) {
                Rectangle()
                    .foregroundColor(.red)
                    .frame(height: 50)
                    .opacity(0.8)
            }
            .tabItem {
                Label("First", systemImage: "star.fill")
            }
        }
    }
}

#Preview {
    ContentView()
}

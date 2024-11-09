//
//  ContentView.swift
//  App_SwiftUI
//
//  Created by user270446 on 11/9/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationBar()
        ScrollView {
            VStack() {
                FeaturesGrid()
                
                Text("Lançamentos")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundStyle(.cyan)
                    .shadow(color: Color.black.opacity(0.3), radius: 5, x: 0, y: 2)
                
                CarouselTabView().padding()
                OptionContainer()
            }.padding(6)
        }
    }
}

#Preview {
    ContentView()
}

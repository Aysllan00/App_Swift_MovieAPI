//
//  FeaturesGrid.swift
//  App_SwiftUI
//
//  Created by user270446 on 11/9/24.
//

import SwiftUI

struct FeaturesGrid: View {
    var gridLayout: [GridItem]{
        return Array(repeating:
    GridItem(.flexible()), count: 2)
    }
    
    var body: some View {
        VStack() {
                    Text("Filmes de Animação")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.bottom, 1)
                        .shadow(color: Color.black.opacity(0.3), radius: 5, x: 0, y: 2)
                        .foregroundStyle(.cyan)
                    
                    ScrollView(.horizontal) {
                        LazyHGrid(rows: gridLayout) {
                            ForEach(filmesMock) { filme in
                                FeatureType(filme: filme)
                            }
                        }.frame(height:270)
                            .padding(.horizontal,15)
                            .padding(.top,15)
                    }.padding(.horizontal)
                }.padding()
            }
        }


#Preview {
    FeaturesGrid()
}

//
//  FeatureType.swift
//  App_SwiftUI
//
//  Created by user270446 on 11/9/24.
//

import SwiftUI

struct FeatureType: View {
    let filme: Filme
    var body: some View {
        VStack(spacing: 5) {
            Image(filme.imagem)
                .resizable()
                .scaledToFit()
                .cornerRadius(20)
                .fixedSize(horizontal: false, vertical: true)
                
            Text(filme.titulo)
                .font(.system(size: 20))
                .multilineTextAlignment(.center)
        }
        .frame(width: 150, height: 180) // Ajusta o tamanho da view
        .cornerRadius(15)
        .shadow(color: Color.black.opacity(0.7), radius: 5, x: 0, y: 2)
    }
}

#Preview {
    FeatureType(filme:
        Filme(id: 1, titulo: "Toy Story", imagem: "toystory")
    )
}

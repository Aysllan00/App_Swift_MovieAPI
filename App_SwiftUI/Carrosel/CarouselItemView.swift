//
//  CarouselItemView.swift
//  App_SwiftUI
//
//  Created by user270446 on 11/9/24.
//

import SwiftUI

struct CarouselItemView: View {
    let filme: Filme
    
    var body: some View {
               
        Image(filme.imagem)
            .resizable()
            .scaledToFit()
            .cornerRadius(20)
            .shadow(color: Color.black.opacity(0.7), radius: 5, x: 0, y: 2)
    }
}

#Preview {
    CarouselItemView(filme: Filme(id: 11, titulo: "Robo selvagem", imagem: "wildrobot"))
}

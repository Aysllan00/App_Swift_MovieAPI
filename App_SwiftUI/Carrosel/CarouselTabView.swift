//
//  CarouselTabView.swift
//  App_SwiftUI
//
//  Created by user270446 on 11/9/24.
//

import SwiftUI

struct CarouselTabView: View {
    let filmesList: [Filme] = [
            Filme(id: 11, titulo: "Robo Selvagem", imagem: "wildrobot"),
            Filme(id: 12, titulo: "Divertidamente 2", imagem: "insideout2"),
            Filme(id: 13, titulo: "Meu Malvado Favorito 4", imagem: "despicableme4")
        ]
    
    var body: some View {
        TabView{
            ForEach(filmesList){
                filme in CarouselItemView(filme: filme)
            }
        }.frame(width: 300, height: 400)
            .tabViewStyle(.page(indexDisplayMode: .always))
    }
}

#Preview {
    CarouselTabView()
}

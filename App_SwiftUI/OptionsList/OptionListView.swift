//
//  OptionListView.swift
//  App_SwiftUI
//
//  Created by user270446 on 11/9/24.
//

import SwiftUI

struct OptionListView: View {
    let option: OptionType
    var body: some View {
        HStack{
            Image(systemName: option.icone)
                .font(.largeTitle)
            VStack(alignment: .leading){
                Text(option.titulo)
                    .font(.headline)
                Text(option.descricao)
                    .font(.subheadline)
            }
        }.foregroundStyle(.cyan)
    }
}

#Preview {
    OptionListView(option: OptionType(id: 1, icone: "heart.circle.fill", titulo: "Favoritos", descricao: "Seus filmes"))
}

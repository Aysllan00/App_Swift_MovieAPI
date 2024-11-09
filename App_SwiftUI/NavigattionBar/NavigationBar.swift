//
//  NavigationBar.swift
//  App_SwiftUI
//
//  Created by user270446 on 11/9/24.
//

import SwiftUI

struct NavigationBar: View {
    @State private var username = "Ayslan" // Estado para armazenar o nome do usuário

    var body: some View {
        HStack {
            // Botão que exibe o nome do usuário
            Button(username) {
                // Ação do botão pode ser configurada conforme necessário
            }
            .font(.system(size: 20))
            .foregroundStyle(Color.teal)
            .fontWeight(.bold)
            .cornerRadius(10)
            
            // Menu de dropdown para trocar o nome do usuário
            Menu {
                Button("Ayslan") {
                    username = "Ayslan"
                }
                Button("Josefina") {
                    username = "Josefina"
                }
                Button("Maria") {
                    username = "Maria"
                }
                Button("Felipe") {
                    username = "Felipe"
                }
            } label: {
                Image(systemName: "person.badge.plus.fill")
                    .font(.title3)
                    .foregroundStyle(.cyan)
            }
        }
    }
}

#Preview {
    NavigationBar()
}

//
//  NavigationBar.swift
//  App_SwiftUI
//
//  Created by user270446 on 11/9/24.
//

import SwiftUI

struct NavigationBar: View {
    @State private var nomeAtual: String = "Ayslan"
    @State private var nomes: [String] = ["Ayslan"]
    @State private var showAlert: Bool = false
    @State private var nomeNovo: String = ""

    var body: some View {
        HStack {
            Menu{
                ForEach(nomes, id: \.self){
                    nome in Button(nome){
                        nomeAtual = nome
                    }
                }
            }label: {
                Text(nomeAtual)
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundStyle(Color.teal)
            }
            
            Button(action: {showAlert = true}){
                Image(systemName: "plus.circle.fill")
                    .font(.title3)
                    .foregroundStyle(.blue)
            }.sheet(isPresented: $showAlert){
                VStack{
                    Text("Adicionar novo nome").font(.headline)
                    TextField("Digite o nome", text: $nomeNovo).textFieldStyle(RoundedBorderTextFieldStyle())
                    HStack{
                        Button("Cancelar"){
                            showAlert = false
                            nomeNovo = ""
                        }.foregroundStyle(.red)
                        
                        Button("Adicionar"){
                            if !nomeNovo.isEmpty{
                                nomes.append(nomeNovo)
                                nomeAtual = nomeNovo
                                nomeNovo = ""
                                showAlert = false
                            }
                        }.foregroundStyle(.teal)
                    }
                    
                }.presentationDetents([.fraction(0.2)]).padding()
            }
        }
    }
}

#Preview {
    NavigationBar()
}

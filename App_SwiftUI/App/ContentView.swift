//
//  ContentView.swift
//  App_SwiftUI
//
//  Created by user270446 on 11/9/24.
//

import SwiftUI

struct ContentView: View {
    
    private var service = APIService()
    @State private var APIoptions: [OptionType] = []
    @State private var newOption: OptionType = OptionType(id: 0, icone: "", titulo: "", descricao: "")
    
    // Controle para abrir o modal (sheet)
    @State private var isSheetPresented: Bool = false
    
    // Flag para controlar a exibição do ProgressView (indicador de carregamento)
    @State private var isLoading: Bool = false

    var body: some View {
        VStack {
            NavigationBar().padding(.horizontal, 15)
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    FeaturesGrid()
                    
                    Text("Lançamentos")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundStyle(.cyan)
                        .shadow(color: Color.black.opacity(0.3), radius: 5, x: 0, y: 2)
                    
                    CarouselTabView().padding()
                    OptionContainer(options: APIoptions)
                }
                .padding(6)
            }
            .onAppear {
                getOptionsAF()
            }
            
            // Botão para abrir o modal (sheet)
            Button(action: {
                isSheetPresented = true // Exibe o modal (sheet)
            }) {
                Text("Adicionar Opção")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            
            // Exibindo o ProgressView se a flag isLoading for verdadeira
            if isLoading {
                ProgressView("Carregando...")
                    .progressViewStyle(CircularProgressViewStyle(tint: .blue))
                    .padding()
            }
        }
        .sheet(isPresented: $isSheetPresented) {
            // O conteúdo do modal, onde o usuário pode preencher os dados
            VStack {
                Text("Criar Nova Opção")
                    .font(.title2)
                    .padding()
                
                // Campo para o título da nova opção
                TextField("Título", text: $newOption.titulo)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                // Campo para o ícone da nova opção
                TextField("Ícone", text: $newOption.icone)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .autocapitalization(.none)
                
                // Campo para a descrição da nova opção
                TextField("Descrição", text: $newOption.descricao)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                // Botão para salvar a nova opção e chamar o método de POST
                Button(action: {
                    // Exemplo de id gerado (pode ser customizado ou gerado automaticamente)
                    let generatedID = Int.random(in: 1000...9999)
                    newOption.id = generatedID
                    postOption(newOption)
                    isSheetPresented = false // Fecha o modal após adicionar
                }) {
                    Text("Salvar")
                        .padding()
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
                .padding(.top)
                
                Button(action: {
                    isSheetPresented = false // Fecha o modal sem salvar
                }) {
                    Text("Cancelar")
                        .padding()
                        .background(Color.red)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
                .padding(.top)
            }
            .padding()
        }
    }
    
    // Método para obter as opções da API
    func getOptionsAF() {
        isLoading = true // Ativa o loading
        service.getOptions { options, error in
            if let options = options {
                self.APIoptions = options
            } else {
                // Handle errors here if necessary
            }
            isLoading = false // Desativa o loading
        }
    }
    
    func postOption(_ option: OptionType) {
        isLoading = true // Ativa o indicador de carregamento
        service.postOption(option) { success, error in
            if success {
                // Se o POST for bem-sucedido, adicionamos a nova opção à lista local
                DispatchQueue.main.async {
                    self.APIoptions.append(option) // Atualiza a lista no estado
                }
            } else {
                // Lida com erro, se necessário
                print("Erro ao adicionar a opção.")
            }
            DispatchQueue.main.async {
                self.isLoading = false // Desativa o indicador de carregamento
            }
        }
    }

}

#Preview {
    ContentView()
}

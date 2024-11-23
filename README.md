# Grid de Filmes de Animação

Este é um aplicativo desenvolvido com SwiftUI que exibe um grid de filmes de animação em um layout dinâmico. O projeto utiliza uma estrutura de grid horizontal, onde os filmes são exibidos com uma imagem e um título. A aplicação também implementa uma barra de navegação e um carrossel para mostrar filmes específicos de lançamentos.

## Funcionalidades

- Exibição de filmes em uma grade (grid) com imagens e títulos.
- Carrossel de lançamentos de filmes.
- Layout flexível e responsivo com uso de `LazyHGrid` para performance otimizada.
- Barra de navegação simples no topo.
- Interatividade com scroll e navegação entre diferentes seções de filmes.
- Adição dinâmica de novas opções de filmes através de um formulário de input (modal).
- Exibição de um indicador de carregamento enquanto os dados estão sendo carregados.

## Tecnologias Utilizadas

- **SwiftUI**: Framework de UI da Apple utilizado para construção da interface.
- **Alamofire**: Biblioteca para realizar requisições HTTP assíncronas, usada para buscar os filmes e enviar novas opções para a API.
- **Xcode**: IDE utilizada para desenvolvimento do projeto.
- **Swift**: Linguagem de programação para implementar a lógica de negócios.

## Estrutura do Projeto

O projeto está estruturado em componentes modulares para facilitar a manutenção e a expansão do app:

- **ContentView**: A tela principal do aplicativo, que organiza os componentes principais (como o grid de filmes e o carrossel de lançamentos). Também gerencia o estado de carregamento e a exibição do modal para adição de filmes.
- **FeaturesGrid**: Exibe um grid de filmes com título e imagem, usando `LazyHGrid` para otimizar a performance.
- **CarouselTabView**: Um carrossel de filmes lançados recentemente.
- **FilmeItemView**: Exibe a imagem e o título de cada filme individualmente em um item do grid.
- **Filme**: Estrutura que armazena dados relacionados ao filme, como título, imagem e descrição.
- **APIService**: Classe responsável por realizar as requisições de dados via API, tanto para buscar filmes quanto para adicionar novos filmes ao banco de dados remoto.

## Funcionalidades de Backend

O aplicativo também realiza chamadas a uma API mockada, permitindo a recuperação e o envio de dados dos filmes de animação:

- **GET**: Recupera os filmes da API e exibe-os na interface.
- **POST**: Permite adicionar novos filmes ao banco de dados, enviando os dados preenchidos no formulário através de um modal.

## Como Rodar o Projeto

1. **Clonar o repositório**:
   ```bash
   git clone https://github.com/Aysllan00/App_Swift_GridMovies.git
   
2. **Abrir o projeto no Xcode**:
   - Abra o arquivo `App_SwiftUI.xcodeproj` no Xcode.

3. **Instalar dependências**:
   - O projeto usa Alamofire para requisições HTTP. Certifique-se de instalar as dependências usando o CocoaPods ou Swift Package Manager.
   
4. **Executar o aplicativo**:
  - Selecione um simulador ou dispositivo físico.
  - Clique em Run (Cmd + R) para compilar e rodar o aplicativo.


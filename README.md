

# ⚡ Pokédex Mobile / Trainer Card — Meu Primeiro Projeto em Flutter 🎮

Bem-vindo ao **Pokédex Mobile**, um aplicativo interativo inspirado no universo Pokémon desenvolvido como o meu primeiro projeto em **Flutter** e **Dart**! 🎉

O aplicativo traz uma experiência completa de um **Trainer Card** (Cartão de Treinador) interativo, exibindo perfil do treinador, insígnias de ginásio e um time de Pokémon detalhado com navegação para telas individuais.

### 📸 Telas do Aplicativo

<p align="center">
  <img src="tela1.png" width="23%" alt="Tela 1" />
  <img src="tela2.png" width="23%" alt="Tela 2" />
  <img src="tela3.png" width="23%" alt="Tela 3" />
  <img src="tela4.png" width="23%" alt="Tela 4" />
</p>

<p align="center">
  <img src="tela5.png" width="23%" alt="Tela 5" />
  <img src="tela6.png" width="23%" alt="Tela 6" />
  <img src="tela7.png" width="23%" alt="Tela 7" />
  <img src="tela8.png" width="23%" alt="Tela 8" />
</p>

---

## 📱 Funcionalidades do Aplicativo

### 🆔 1. Trainer Card (Perfil do Treinador)
- **Perfil Customizado**: Avatar do treinador, nome (*Samuel Fernando*) e indicador de pontuação/moedas.
- **Badge de Categoria**: Tag estilizada (*Kanto League Champion*).

### 🏅 2. Galeria de Insígnias (Kanto Badges)
- Carrossel horizontal rolável (`SingleChildScrollView`) exibindo as **8 Insígnias da Liga Kanto**:
  - Insígnia da Rocha (*Boulder Badge*)
  - Insígnia da Cascata (*Cascade Badge*)
  - Insígnia do Trovão (*Thunder Badge*)
  - Insígnia do Arco-Íris (*Rainbow Badge*)
  - Insígnia da Alma (*Soul Badge*)
  - Insígnia do Trovão / Aço (*Marsh Badge*)
  - Insígnia do Vulcão (*Volcano Badge*)
  - Insígnia da Terra (*Earth Badge*)

### ⚔️ 3. Battle Team (Time de Batalha)
- Grid de Pokémon com imagens e GIFs animados:
  - **Charizard** 🔥
  - **Lucario** 👊
  - **Gengar** 👻
  - **Garchomp** 🐉
  - **Tyranitar** 🪨
  - **Gardevoir** 🔮
- **Navegação Dinâmica**: Ao clicar em qualquer Pokémon do time, o usuário abre a tela individual correspondente (`charizard_page.dart`, `garchomp_page.dart`, etc.).

---

## 🎨 Arquitetura e Organização de Código

O projeto segue boas práticas de organização em Flutter, separando telas, regras e estilos visuais em diretórios estruturados:

```text




pokedex_mobile/
├── assets/
│   └── images/                # GIFs e PNGs dos Pokémon e Insígnias
├── lib/
│   ├── main.dart              # Ponto de entrada da aplicação
│   ├── pages/                 # Telas do aplicativo
│   │   ├── home_page.dart
│   │   ├── login_page.dart
│   │   ├── treinador_page.dart
│   │   ├── charizard_page.dart
│   │   ├── garchomp_page.dart
│   │   ├── gardevoir_page.dart
│   │   ├── gengar_page.dart
│   │   └── tyranitar_page.dart
│   └── styles/                # Estilizações e temas centralizados
│       ├── home_style.dart
│       ├── login_style.dart
│       └── treinador_style.dart

# Terminal Zombie System

Terminal Zombie System é um micro RPG de sobrevivência em **texto**, desenvolvido em **Lua**.  
O jogador deve sobreviver enfrentando zumbis, coletando mantimentos e mantendo seu HP.

## Funcionalidades

- Criacao de jogador com nome, HP, dano e inventario.
- Zumbis com HP e dano aleatorio.
- Loop principal que permite:
  - Atacar zumbis
  - Fugir (com chance de encontrar mantimentos)
  - Encontrar mantimentos ao matar zumbis
- HP do jogador limitado a **150**.
- Mensagens coloridas no terminal para facilitar a visualizacao:
  - Verde → ataques do jogador / mantimentos
  - Vermelho → morte ou dano do zumbi
  - Ciano → fuga / eventos especiais
  - Amarelo → eventos gerais / novos zumbis
- Logica de combate simples e turnos de ataque.

## Como jogar

1. Instale o [Lua](https://www.lua.org/download.html) na sua máquina.
2. Clone este repositório ou baixe os arquivos.
3. No terminal, navegue até a pasta do projeto.
4. Execute o jogo com:

```bash
lua main.lua

# Proposta: Plataforma de Avaliação de Jogos

## Motivação

Jogadores precisam de um lugar central para descobrir jogos, registrar títulos que desejam guardar, acompanhar o próprio progresso e publicar avaliações detalhadas. Uma plataforma integrada ao Xano permitirá organizar essas informações por usuário e apresentar a nota média da comunidade.

## Mudanças propostas

- Criar uma aplicação web responsiva com cadastro, login, sessão autenticada e perfil. Reutilizar a tabela `USER` e a autenticação já existentes no Xano.
- Criar um catálogo com cadastro e detalhes de jogos, incluindo título, descrição, capa, desenvolvedora, lançamento, gêneros e plataformas.
- Permitir busca por texto e filtros combináveis por gênero e plataforma.
- Oferecer duas coleções pessoais distintas: jogos salvos, sem exigir um status de progresso, e biblioteca de status com *Quero jogar*, *Jogando*, *Pausado*, *Zerado* e *Abandonado*. Usuários podem adicionar, alterar e remover seus itens.
- Permitir avaliações com nota de 0 a 10, título e texto detalhado, com edição e exclusão pelo autor.
- Exibir a média e a quantidade de avaliações da comunidade no catálogo e nos detalhes do jogo.
- Integrar a aplicação a tabelas e endpoints Xano para catálogo, gêneros, plataformas, jogos salvos, status e avaliações, aplicando autenticação e autorização por usuário onde necessário.

## Capacidades

### Novas capacidades
- `user-auth`: cadastro, login, sessão e perfil usando a autenticação existente do Xano.
- `game-catalog`: cadastro, busca, filtros, detalhes e métricas comunitárias dos jogos.
- `saved-games`: coleção pessoal de jogos salvos, independente dos status de progresso.
- `user-library`: coleção pessoal com status de progresso por jogo.
- `game-reviews`: avaliações detalhadas e agregação da nota média da comunidade.

### Capacidades modificadas

Nenhuma identificada. As tabelas e APIs de jogos são novas; a autenticação existente será reutilizada.

## Impacto e limites

- Frontend web responsivo, integrado às APIs REST do Xano.
- Xano: novas tabelas e endpoints para jogos, relações com gêneros e plataformas, jogos salvos, biblioteca de status e avaliações. A tabela `USER` permanece como identidade e fonte de autenticação.
- A proposta não define tecnologia de frontend nem prevê importação automática de catálogos externos, recursos sociais ou avaliações sem vínculo a uma conta.

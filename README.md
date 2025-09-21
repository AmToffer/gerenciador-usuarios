# Gerenciador de Usuários Linux

Este é um script simples em Bash para **criar e deletar usuários** em sistemas Linux. Ele é feito para aprendizado de administração de sistemas e é totalmente **portável**.

---

## Estrutura do projeto

- `gerenciar_usuarios.sh` → script principal que cria/deleta usuários e mostra mensagens no terminal.
- `executor.sh` → lançador que abre um terminal e executa o script interno.
- `README.md` → este arquivo, explicando o uso do projeto.

---

## Pré-requisitos

- Linux (qualquer distribuição moderna)
- Terminal disponível (`gnome-terminal`)
- Permissão de root para criar ou deletar usuários (`sudo`)

---

## Como usar

### 1. Torne os scripts executáveis (só precisa fazer uma vez):

```bash
chmod +x executor.sh
chmod +x gerenciar_usuarios.sh
```

### 2. Rodando o script

Modo recomendado (portável e seguro): pelo terminal

`./gerenciar_usuarios.sh`

Isso vai abrir um terminal interativo, mostrar o menu de opções, e manter a janela aberta até você pressionar Enter.

Evite clicar direto no script interno (gerenciar_usuarios.sh) sem usar o lançador (executor.sh).

Se você clicar direto, o terminal pode fechar antes de mostrar as mensagens.

O lançador (executor.sh) garante que o script principal rode em um terminal aberto e seguro. Atualmente, ele depende do GNOME Terminal, então só funcionará em sistemas que o tenham instalado. O projeto ainda está em desenvolvimento.

Menu do script

Digite 1 → Criar usuário

Digite 2 → Deletar usuário

Digite 3 → Sair

Após cada ação, pressione Enter para encerrar o terminal.

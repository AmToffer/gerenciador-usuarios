# Gerenciador de Usuários Linux

Este é um script simples em Bash **para criar, deletar e listar usuários** em sistemas Linux. Ele é feito para aprendizado de administração de sistemas e é totalmente **portável**.

O script agora roda em um loop contínuo, permitindo que você execute múltiplas ações sem precisar reiniciá-lo.

---

## Estrutura do projeto

- `gerenciar_usuarios.sh` → script principal que cria/deleta usuários e mostra mensagens no terminal.
- `README.md` → este arquivo, explicando o uso do projeto.

---

## Pré-requisitos

- Linux (qualquer distribuição moderna)
- Permissão de root para criar ou deletar usuários (`sudo`)

---

## Como usar

### 1. Torne os scripts executáveis (só precisa fazer uma vez):

```bash
chmod +x gerenciar_usuarios.sh
```

### 2. Rodando o script

Você deve executar o script com privilégios de root, pois ele precisa de permissão para criar e deletar usuários no sistema.
```bash
sudo ./gerenciar_usuarios.sh
```

Isso vai abrir o menu interativo diretamente no seu terminal.

## Menu do script

O script mostrará o seguinte menu:

Digite 1 → Criar Usuário

Pede um nome de usuário, cria sua pasta /home e define uma senha.

Digite 2 → Deletar Usuário

Pede um nome de usuário e remove o usuário e sua pasta /home.

Digite 3 → Listar Usuários

Lista todos os usuários "humanos" (não-sistema) cadastrados.

Digite 4 → Sair

Encerra o script.

## Próximas Etapas do Projeto(Roadmap)

Este projeto é um aprendizado contínuo. As melhorias planejadas incluem:

- [ ] Adicionar Opção "Mudar Senha":

    - Criar uma nova função que utilize o comando passwd para forçar a troca de senha de um usuário existente.

- [ ] Melhoria Visual do Menu:

    - Estudar o uso de comandos como tput para adicionar cores ao menu (ex: opções em verde, sair em vermelho) e clear para limpar a tela a cada loop, tornando a interface mais limpa.

- [ ] Verificação de Usuário Existente:

    - Antes de criar um usuário, verificar (talvez usando grep no /etc/passwd) se o nome de usuário já existe, para evitar erros.

- [ ] Confirmação de Exclusão:

    - Adicionar um passo de confirmação ("Você tem certeza? [s/N]") antes de deletar um usuário, para prevenir acidentes.

- [ ] Adicionar Usuário a Grupos:

    - Implementar uma opção para adicionar um usuário existente a grupos específicos (como sudo, docker, www-data, etc.).
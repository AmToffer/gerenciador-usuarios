#meu codigo original:

echo "=== Gerenciador de Usuários ==="
echo "1 - Criar Usuário"
echo "2 - Deletar Usuário"
echo "3 - Sair"
read opcao

if [ $opcao -eq 1 ]; then
    echo "Digite o nome do usuário:"
    read usuario
    sudo sh -c "useradd $usuario" 
    sudo passwd $usuario
    echo "Usuário $usuario criado!"
    
elif [ $opcao -eq 2 ]; then
    echo "Digite o nome do usuário:"
    read usuario
    sudo userdel $usuario
    echo "Usuário $usuario deletado"
    
else
    echo "Saindo..."

fi

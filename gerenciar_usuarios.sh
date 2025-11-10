#meu codigo original:

criar_usuarios(){
    echo "Digite o nome do usuario: "
    read usuario
    sudo useradd -m -s /bin/bash $usuario
    sudo passwd $usuario
    echo "Usuario criado"

}
deletar_usuario(){
    echo "Digite o nome do usuario: "
    read usuario
    sudo userdel -r $usuario
    echo "Usuario deletado"

}
listar_usuarios(){
    echo "Usuarios cadastrados:"
    awk -F: '$3 >= 1000 { print $1 }' /etc/passwd

}
while true; do
echo "=== Gerenciador de Usuários ==="
echo "1 - Criar Usuário"
echo "2 - Deletar Usuário"
echo "3 - Listar Usuários"
echo "4 - Sair"
read variavel_opt

case $variavel_opt in
    1)
        criar_usuarios
        ;;

    2)
        deletar_usuario
        ;;

    3)
        listar_usuarios
        ;;

    4)
        echo "Saindo..."
        break
        ;;

esac

done

echo "Finalizando Script"

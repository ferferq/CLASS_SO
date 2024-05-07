#!/bin/bash

# Função para exibir o menu
exibir_menu() {
    echo "Escolha uma opção:"
    echo "1. Copiar arquivos de download para backup"
    echo "2. Exibir informações do servidor"
    echo "3. Opção 3"
    echo "4. Opção 4"
    echo "5. Sair"
}

# Função para copiar arquivos de backup
copiar_backup() {
    # Coloque aqui o comando para copiar os arquivos de backup
    echo "Copiando arquivos de download para backup..."
    cp -r ~/Downloads ~/backup-downloads
}

# Função para exibir informações do servidor
exibir_informacoes_servidor() {
    # Coloque aqui o comando para exibir informações do servidor
    echo "Exibindo informações do servidor..."
    uname -a
}

# Loop principal
while true; do
    exibir_menu
    read -p "Opção: " opcao

    case $opcao in
        1)
            copiar_backup
            ;;
        2)
            exibir_informacoes_servidor
            ;;
        3)
            echo "Executando a opção 3..."
            ;;
        4)
            echo "Executando a opção 4..."
            ;;
        5)
            echo "Saindo..."
            break
            ;;
        *)
            echo "Opção inválida. Por favor, escolha uma opção válida."
            ;;
    esac
done

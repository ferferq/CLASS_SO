@echo off
cls
:menu
cls
color 0a

date /t
echo.

echo Computador: %computername%        Usuario: %username%
echo.
                   
echo            MENU TAREFAS
echo.
echo  ==================================
echo * 1. Esvaziar a Lixeira                 * 
echo * 2. Fazer Backup do txt na pasta test  *
echo * 3. Escanear Disco Local               *
echo * 4. Painel de Controle                 * 
echo * 5. Abrir Maquina VM                   * 
echo * 6. Criar um arquivo txt na pasta test * 
echo * 7. Sair                               * 
echo  ==================================

set /p opcao= Escolha uma opcao: 
echo ------------------------------
if %opcao% equ 1 goto opcao1
if %opcao% equ 2 goto opcao2
if %opcao% equ 3 goto opcao3
if %opcao% equ 4 goto opcao4
if %opcao% equ 5 goto opcao5
if %opcao% equ 6 goto opcao6
if %opcao% equ 7 goto opcao7
if %opcao% GEQ 8 goto opcao8

:opcao1
cls
rd /S /Q c:\$Recycle.bin
echo ==================================
echo *      Lixeira Esvaziada          *
echo ==================================
pause
goto menu

:opcao2
cls
copy C:\Users\%username%\Documents\test\*.* C:\Users\%username%\Desktop
echo ==================================
echo *      Backup concluido           *
echo ==================================
pause
goto menu

:opcao3
cls
echo ==================================
echo *     Escaneamento de disco       *
echo ==================================
chkdsk c:
pause
goto menu

:opcao4
cls
control.exe
pause
goto menu

:opcao5
cls
wmic process call create "C:\Program Files\Oracle\VirtualBox\VirtualBox.exe"
cls
echo ==================================
echo *     Maquina Vitural Aberto     *
echo ==================================
pause
goto menu

:opcao6
cls
cd C:\Users\%username%\Documents\test
set /p name_file= Digite o nome do arquivo: 
type nul > "%name_file%.txt"
echo Hello, World! > "%name_file%.txt"
echo ==================================
echo *   Arquivo criado com sucesso   *
echo ==================================
pause
goto menu

:opcao7
cls
exit

:opcao8
echo ==============================================
echo * Opcao Invalida! Escolha outra opcao do menu *
echo ==============================================
pause
goto menu

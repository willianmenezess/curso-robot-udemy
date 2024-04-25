*** Settings ***
Documentation   Exercicio que cria uma nova keyword, onde ela nos produzirá um e-mail customizado
Library     String

*** Variables ***
${nome}     Willian
${sobrenome}    Menezes

*** Test Cases ***
Caso de teste 01: Criação de um e-mail customizado
    ${email_criado}    Criar E-mail    ${nome}    ${sobrenome}
    Set Suite Variable    ${email_criado}  # Caso queira usar a variável em outros casos de teste
    Log To Console    ${email_criado} 

*** Keywords ***
Criar E-mail
    [Arguments]     ${nome}     ${sobrenome}
    # gerando uma palavra aleatória:
    ${palavra_aleatoria}    Generate Random String    5
    ${email}    Set Variable    ${nome}${sobrenome}${palavra_aleatoria}@testrobot.com
    [Return]    ${email}


    
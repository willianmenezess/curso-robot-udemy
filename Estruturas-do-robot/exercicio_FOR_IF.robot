*** Settings ***
Documentation   Siga os seguintes passos:
...      1-Declare uma variável do tipo lista com vários números
...      2-Crie uma keyword que percorra essa lista usando o FOR
...      3-Dentro do FOR, faça um bloco IF que imprima no Log a frase "Eu sou o 
...      número5!" e "Eu sou o número 10!", ou seja, só pode imprimir quando o número 
...      atual da lista for 5 ou 10.
...      4-Use o ELSE para imprimir no Log a frase "Eu não sou o número 5 e nem o 10!"

*** Variables ***
@{LISTA_NUMEROS}    1    2    3    4    5    6    7    8    9    10

*** Test Cases ***
Caso de teste 01 - Imprime numeros 5 e 10
    [Documentation]    Caso de teste que imprime frase com os números 5 e 10
    [Tags]    lista_numeros    log_frase_numero
    Percorre lista de números e imprime frases

*** Keywords ***
Percorre lista de números e imprime frases
    Log To Console    ${\n}
    FOR  ${NUMERO}  IN  @{LISTA_NUMEROS}
        IF  ${NUMERO} in (5,10)
            Log To Console    Eu sou o número ${NUMERO}!
        ELSE
            Log To Console    Eu não sou o número 5 e nem o 10!
        END
    END
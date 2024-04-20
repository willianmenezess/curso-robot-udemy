*** Settings ***
Documentation    Essa suíte testa o site amazon.com.br
Resource         resources-amazon.robot
Test Setup       Abrir o navegador
# Test Teardown    Fechar o navegador


*** Test Cases ***
Caso de Teste 01 - Acesso ao menu "Eletrônicos"
    [Documentation]    Esse caso de teste verifica o menu "Eletrônicos"
    ...                e se a página de Eletrônicos é exibida corretamente
    [Tags]    menus    categorias
    Acessar a homepage do site amazon.com.br
#     Entrar no menu "Eletrônicos"
#     Verificar se o título da página fica "Eletrônicos e Tecnologia | Amazon.com.br"
#     Verificar se aparece a frase "Eletrônicos e Tecnologia"
#     Verificar se aparece a categoria "Computadores e Informática"


# Caso de Teste 02 - Pesquisa de um Produto
#     [Documentation]    Esse caso de teste verifica se um produto é exibido corretamente
#     [Tags]    busca_produtos    lista_busca
#     Acessar a homepage do site amazon.com.br
#     Digitar o nome de produto "Xbox Series S" no campo de busca
#     Clicar no botão de busca
#     Verificar o resultado da pesquisa está listando o produto pesquisado


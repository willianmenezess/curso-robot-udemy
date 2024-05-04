*** Settings ***
Documentation    Essa suíte testa o site amazon.com.br
Resource         resources-amazon.robot
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador


*** Test Cases ***
Caso de Teste 01 - Acesso ao menu "Eletrônicos"
    [Documentation]    Esse caso de teste verifica o menu "Eletrônicos"
    ...                e se a página de Eletrônicos é exibida corretamente
    [Tags]    menus    categorias
    Dado que estou na home da pagina da Amazon.com.br
    Quando acessar o menu "Eletrônicos"
    Então o título da página deve ser "Eletrônicos e Tecnologia | Amazon.com.br"
    E o texto "Eletrônicos e Tecnologia" deve estar presente na página
    E a categoria "Computadores e Informática" deve estar presente na página


Caso de Teste 02 - Pesquisa de um Produto
    [Documentation]    Esse caso de teste verifica se um produto é exibido corretamente
    [Tags]    busca_produtos    lista_busca
    Dado que estou na home da pagina da Amazon.com.br
    Quando pesquisar pelo produto "Xbox Series S"
    Então o título da página deve ser "Amazon.com.br : Xbox Series S"
    E os resultados da busca "Xbox Series S" devem ser mostrados na página
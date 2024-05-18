*** Settings ***
Documentation    Essa suíte testa o site amazon.com.br
Resource         resources-amazon.robot
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador
# Suite Setup    ...
# Suite Teardown ...


*** Test Cases ***
Caso de Teste 01 - Acesso ao menu "Eletrônicos"
    [Documentation]    Esse caso de teste verifica o menu "Eletrônicos"
    ...                e se a página de Eletrônicos é exibida corretamente
    [Tags]    menus    categorias
    Acessar a homepage do site amazon.com.br
    Entrar no menu "Eletrônicos"
    Verificar se aparece a frase "Eletrônicos e Tecnologia"
    Verificar se o título da página fica "Eletrônicos e Tecnologia | Amazon.com.br"
    Verificar se aparece a categoria "Computadores e Informática"
    Verificar se aparece a categoria "Tablets"


Caso de Teste 02 - Pesquisa de um Produto
    [Documentation]    Esse caso de teste verifica se um produto é exibido corretamente
    [Tags]    busca_produtos    lista_busca
    Acessar a homepage do site amazon.com.br
    Digitar o nome de produto "Xbox Series S" no campo de busca
    Clicar no botão de busca
    Verificar se o resultado da pesquisa está listando o produto "Xbox Series S"

Caso de Teste 03 - Adicionar Produto no Carrinho
    [Documentation]    Esse teste verifica a adição de um produto no carrinho de compras
    [Tags]             adicionar_carrinho
    Acessar a home page do site Amazon.com.br
    Digitar o nome de produto "Xbox Series S" no campo de busca
    Clicar no botão de busca
    Verificar se no resultado da pesquisa aparece o produto "Console Xbox Series S"
    Adicionar o produto "Console Xbox Series S" no carrinho
    Verificar se o produto "Console Xbox Series S" foi adicionado com sucesso

Caso de Teste 04 - Remover Produto do Carrinho
    [Documentation]    Esse teste verifica a remoção de um produto do carrinho de compras
    [Tags]             remover_carrinho
    Acessar a home page do site Amazon.com.br
    Digitar o nome de produto "Xbox Series S" no campo de busca
    Clicar no botão de busca
    Verificar se no resultado da pesquisa aparece o produto "Console Xbox Series S"
    Adicionar o produto "Console Xbox Series S" no carrinho
    Verificar se o produto "Console Xbox Series S" foi adicionado com sucesso
    Remover o produto "Console Xbox Series S" do carrinho
    Verificar se o produto "Console Xbox Series S" foi removido com sucesso

# robot -d ./results tests-amazon.robot  => resultados e logs gerados na pasta results
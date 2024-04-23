*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${BROWSER}    Chrome
${URL}    https://www.amazon.com.br/
${MENU_VENDAS}    xpath=//a[@href='/gp/browse.html?node=17877554011&ld=ASBRSOA_retail_sell_header_t1&ref_=nav_cs_sell'][contains(.,'Venda na Amazon')]
${MENU_ELETRONICOS}    xpath=//a[@href='/Eletronicos-e-Tecnologia/b/?ie=UTF8&node=16209062011&ref_=nav_cs_electronics'][contains(.,'Eletrônicos')]
${CAMPO_BUSCA}    id=twotabsearchtextbox
${BOTAO_BUSCA}    xpath=//input[@value='Ir']


*** Keywords ***
Abrir o navegador
    Open Browser    browser=${BROWSER}
    Maximize Browser Window

Fechar o navegador
    Capture Page Screenshot  #para capturar evidência do teste
    Close Browser

Acessar a homepage do site amazon.com.br
    Go To    ${URL}
    Wait Until Element Is Visible    ${MENU_VENDAS}

Entrar no menu "Eletrônicos"
    Click Element    ${MENU_ELETRONICOS}

Verificar se aparece a frase "${FRASE}"
    Wait Until Page Contains    ${FRASE}

Verificar se o título da página fica "${TITULO}"
    Title Should Be   ${TITULO}

Verificar se aparece a categoria "${NOME_CATEGORIA}"
    Element Should Be Visible   //span[@dir='auto'][contains(.,'${NOME_CATEGORIA}')]

Digitar o nome de produto "${TEXTO_BUSCA}" no campo de busca
    Input Text    ${CAMPO_BUSCA}    ${TEXTO_BUSCA}

Clicar no botão de busca
    Click Element    ${BOTAO_BUSCA}

Verificar se o resultado da pesquisa está listando o produto "${TEXTO_BUSCA}"
    Wait Until Page Contains    resultados para "${TEXTO_BUSCA}"

Verificar se no resultado da pesquisa aparece o produto "${PRODUTO}"
    Element Should Be Visible    //span[@class='a-size-base-plus a-color-base a-text-normal'][contains(.,'${PRODUTO}')]

Adicionar o produto "Console Xbox Series S" no carrinho
    Click Element    id=a-autoid-1-announce

Verificar se o produto "${PRODUTO}" foi adicionado com sucesso
    Element Should Be Visible    (//img[contains(@alt,'${PRODUTO}')])[1]

Remover o produto "${PRODUTO}" do carrinho
    Click Element    class=a-button-text
    Wait Until Page Contains    "Carrinho de compras"
    Click Element    xpath=//input[contains(@aria-label,'Excluir ${PRODUTO}')]    

Verificar se o produto "${PRODUTO}" foi removido com sucesso
    Wait Until Page Does Not Contain    "${PRODUTO}"

# ======= GHERKIN STEPS ========== #
Dado que estou na home da pagina da Amazon.com.br
    Acessar a homepage do site amazon.com.br

Quando acessar o menu "Eletrônicos"
    Entrar no menu "Eletrônicos"

Então o título da página deve ser "Eletrônicos e Tecnologia | Amazon.com.br"
    Verificar se o título da página fica "Eletrônicos e Tecnologia | Amazon.com.br"

E o texto "Eletrônicos e Tecnologia" deve estar presente na página
    Verificar se aparece a frase "Eletrônicos e Tecnologia"

E a categoria "Computadores e Informática" deve estar presente na página
    Verificar se aparece a categoria "Computadores e Informática"

Quando pesquisar pelo produto "Xbox Series S"
    Digitar o nome de produto "Xbox Series S" no campo de busca
    Clicar no botão de busca

Então o título da página deve ser "Amazon.com.br : Xbox Series S"
    Verificar se o título da página fica "Amazon.com.br : Xbox Series S"

E os resultados da busca "Xbox Series S" devem ser mostrados na página
    Verificar se o resultado da pesquisa está listando o produto "Xbox Series S"
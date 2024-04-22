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
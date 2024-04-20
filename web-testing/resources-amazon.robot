*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${URL}    https://www.amazon.com.br/
${MENU_VENDAS}    xpath=//a[@href='/gp/browse.html?node=17877554011&ld=ASBRSOA_retail_sell_header_t1&ref_=nav_cs_sell'][contains(.,'Venda na Amazon')]
${MENU_ELETRONICOS}    xpath=//a[@href='/Eletronicos-e-Tecnologia/b/?ie=UTF8&node=16209062011&ref_=nav_cs_electronics'][contains(.,'Eletrônicos')]
${H1_ELETRONICOS}    xpath=//h1[contains(.,'Eletrônicos e Tecnologia')]


*** Keywords ***
Abrir o navegador
    Open Browser    browser=chrome
    Maximize Browser Window

Fechar o navegador
    Close Browser

Acessar a homepage do site amazon.com.br
    Go To    ${URL}
    Wait Until Element Is Visible    ${MENU_VENDAS}

Entrar no menu "Eletrônicos"
    Click Element    ${MENU_ELETRONICOS}

Verificar se aparece a frase "Eletrônicos e Tecnologia"
    Wait Until Page Contains Element    ${H1_ELETRONICOS}

Verificar se o título da página fica "${TITLE_ELETRONICOS}"
    Title Should Be   ${TITLE_ELETRONICOS}
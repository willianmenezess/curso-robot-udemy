*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://www.amazon.com.br/
${LOCATOR_VENDAS}    xpath=//a[@href='/gp/browse.html?node=17877554011&ld=ASBRSOA_retail_sell_header_t1&ref_=nav_cs_sell'][contains(.,'Venda na Amazon')]
*** Keywords ***
Abrir o navegador
    Open Browser    browser=chrome

Fechar o navegador
    Close Browser

Acessar a homepage do site amazon.com.br
    Go To    ${URL}
    Wait Until Element Is Visible    ${LOCATOR_VENDAS}
*** Variables ***
# Dicionário com os meses do ano
&{DIAS_POR_MES}    janeiro=31    fevereiro=28    março=31    abril=30    maio=31    junho=30    julho=31    agosto=31    setembro=30    outubro=31    novembro=30    dezembro=31

*** Test Cases ***
Imprimir os meses do ano
    Gera Logs dos meses do ano e seus respectivos dias

*** Keywords ***
Gera Logs dos meses do ano e seus respectivos dias
    Log To Console     Em JANEIRO há ${DIAS_POR_MES.janeiro} dias!
    Log To Console     Em FEVEREIRO há ${DIAS_POR_MES.fevereiro} dias!
    Log To Console     Em MARÇO há ${DIAS_POR_MES.março} dias!
    Log To Console     Em ABRIL há ${DIAS_POR_MES.abril} dias!
    Log To Console     Em MAIO há ${DIAS_POR_MES.maio} dias!
    Log To Console     Em JUNHO há ${DIAS_POR_MES.junho} dias!
    Log To Console     Em JULHO há ${DIAS_POR_MES.julho} dias!
    Log To Console     Em AGOSTO há ${DIAS_POR_MES.agosto} dias!
    Log To Console     Em SETEMBRO há ${DIAS_POR_MES.setembro} dias!
    Log To Console     Em OUTUBRO há ${DIAS_POR_MES.outubro} dias!
    Log To Console     Em NOVEMBRO há ${DIAS_POR_MES.novembro} dias!
    Log To Console     Em DEZEMBRO há ${DIAS_POR_MES.dezembro} dias!


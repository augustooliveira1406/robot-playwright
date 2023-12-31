*** Settings ***
Resource          ../resources/serve-rest-front.resource
Suite Setup       Cadastrar Usuário e Logar
Suite Teardown    Close Browser  ALL

*** Test Cases ***
Cenario: Login com sucesso Serv Rest Front
    [Tags]  login
    Abrir o navegador
    Ir para o site Serve Rest Front
    Preencher os dados do novo usuário e cadastrar
    Conferir usuário cadastrado com sucesso

Desafio: Conferir se o novo usuário está na "Lista de Usuários"
    [Tags]    lista_usuario
    #Cadastrar novo usuário        este fazia via front
    Abrir o site Serve Rest Front logado    
    Acessar a lista de usuários
    Conferir se o usuário aparece na lista de usuários

Desafio: Conferir se novo produto cadastrado está na "Lista de Produtos"
    [Tags]    lista_produto
    #Cadastrar novo usuário        este fazia via front
    Abrir o site Serve Rest Front logado
    Cadastrar um novo produto
    Conferir que o produto aparece na "Lista de Produtos"

Exemplo utilizando requisições https
    [Tags]    http
    Abrir o navegador
    Ir para o site Serve Rest Front
    Criar usuário via API
    Logar com o usuário cadastrado via API

Exemplo utilizando o Storage de Armazenamento no Contexto
    [Tags]    storage
    Abrir o site Serve Rest Front logado
    Acessar a lista de usuários

    


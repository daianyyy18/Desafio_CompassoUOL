# language: pt

Funcionalidade: Login no Ecommerce Fake
  Como um cliente do site FakeEcommerce
  CLiente quer efetuar Login
  Para que ele tenha acesso as funcionalidades de cliente logado

  Contexto:
    Dado que Cliente possui uma conta no sistema

  # Completar o cenário abaixo
  Cenário: Realizar login
    E ele acessa a página de login
    E ele preenche seus dados válidas
    Quando ele aciona a opção de realizar login
    Então ele deve ser redirecionado para a página inicial logado

  # Completar o cenário abaixo
  Cenário: Login com falha
    E ele acessa a página de login
    E ele preenche sua senha inválida
    Quando ele aciona a opção de realizar login
    Então uma mensagem de senha incorreta deve ser exibida
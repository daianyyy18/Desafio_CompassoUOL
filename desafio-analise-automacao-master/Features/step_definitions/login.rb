require 'cucumber'
Dado('que Cliente possui uma conta no sistema') do
  @login_page.load
  sleep(5)
end

E("ele acessa a página de login") do
  expect(page).to have_current_path('http://automationpractice.com/index.php?controller=authentication&back=my-account', url: true)
  sleep(5)
end

E("ele preenche seus dados válidas") do
  @login_page.preencher_login
  sleep(10)
end

Quando("ele aciona a opção de realizar login") do
  @login_page.clicar_login
end

Então("ele deve ser redirecionado para a página inicial logado") do
  expect(page).to have_current_path('http://automationpractice.com/index.php?controller=my-account', url:true)
  sleep(5)

end








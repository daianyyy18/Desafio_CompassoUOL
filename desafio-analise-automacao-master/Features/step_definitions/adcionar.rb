require 'cucumber'
E("ele acessa a página de produto") do
  @search_page.load
  sleep(5)
end

Quando("ele aciona a opção de adcionar ao carrinho") do
  @search_page.products.image.click_link
  sleep(5)
end


Então("ele deve ser redirecionado para a página do carrinho") do
  expect(page).to have_current_path('http://automationpractice.com/index.php?controller=order&ipa=1', url: true)
  sleep(5)
end
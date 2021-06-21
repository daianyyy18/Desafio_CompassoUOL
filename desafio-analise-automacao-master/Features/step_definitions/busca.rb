require 'cucumber'
Dado("que esteja na página inicial") do
  @home_page.load
  sleep(5)
end

Quando("buscar pelo produto 'shirt'") do |query|
  @query=query
  @home_page.search(@query)
  sleep(5)
end

Então("devem ser retornados produtos") do
  expect(@search_page.products.first).to have_image
  expect(@search_page.products.first).to have_name
  expect(@search_page.products.first.name.text).to have_content @query
end





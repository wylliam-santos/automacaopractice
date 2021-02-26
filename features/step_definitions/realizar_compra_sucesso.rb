Dado("que acesso a página do site de compras") do
  visit "/"
end

Dado("escolha um produto qualquer na loja") do
  @dash_page.find_product
end

Dado("adicione o produto escolhido ao carrinho") do
  @dash_page.add_to_cart
end

Dado("valide se o produto foi corretamente adicionado ao carrinho e prossiga caso esteja tudo certo") do
  expect(page).to have_text "Product successfully added to your shopping cart"

  @dash_page.go_to_checkout
end

Dado("prossiga para o checkout") do
  expect(page).to have_text "Blouse"
  @dash_page.proceed_to_checkout
end

Quando("eu realizo o cadastro do cliente preenchendo todos os campos obrigatórios do formulário") do
  @dash_page.create_user
end

Quando("valide se o endereço está correto e prossiga") do
  expect(page).to have_text "YOUR DELIVERY ADDRESS"
  click_button "Proceed to checkout"
end

Quando("aceite os termos de serviço e prossiga") do
  find("div[class='checker']").click
  click_button "Proceed to checkout"
end

Quando("valide o valor total da compra") do
  expect(page).to have_text "$29.00"
end

Quando("selecione um método de pagamento e prossiga") do
  find("a[title='Pay by bank wire']").click
end

Então("devo confirmar a compra e validar se foi finalizada com sucesso.") do
  click_button "I confirm my order"
  expect(page).to have_text "Your order on My Store is complete."
end

Dado("que acesso a página de cadastro") do
  visit "/"
  click_on "EXPERIMENTE AGORA"
end

Quando("submeto o meu cadastro com:") do |table|
  user = table.rows_hash

  delorean user[:email]

   find("input[name*=email]").set user[:email]
   find("input[placeholder='Sua senha secreta']").set user[:senha]
   find("input[placeholder='Confirme a senha']").set user[:senha_confirma]

   click_on "Cadastrar"
end

Então("devo ser redirecionado para a área logada") do
  expect(page).to have_css ".dashboard"
end

Então("devo ver a mensagem: {string}") do |expect_message|
  alert = find(".message p")
  expect(alert.text).to eql expect_message
end

Quando("acesso a página de cadastro") do
  steps %(
    Dado que acesso a página de cadastro
  )
end

Então("deve exibir o seguinte css: {string}") do |expect_css|
  expect(page).to have_css expect_css
end

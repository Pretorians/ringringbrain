Given(/^abro la aplicación$/) do
  visit '/'
end

Given(/^Abrir pagina$/) do
    visit '/'
end

Then(/^"([^"]*)"$/) do |text|
 expect(page.body).to match /#{text}/m
end

When(/^Hacer clic en el boton Start$/) do
   click_button(start)
<<<<<<< HEAD
end
=======
  end

>>>>>>> 5d985d53cf0fd027e1c736d9474bfc9f127ee2e8

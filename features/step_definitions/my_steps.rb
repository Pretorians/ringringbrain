Given(/^abro la aplicación$/) do
  visit '/'
end

<<<<<<< HEAD
Given(/^Abrir pagina$/) do
    visit '/'
end

Then(/^"([^"]*)"$/) do |text|
 expect(page.body).to match /#{text}/m
end

When(/^Hacer clic en el boton Start$/) do
   click_button(start)
  end
=======
When(/^inicio juego$/) do
  click_button("inicio")
end

Then(/^veo "([^"]*)"$/) do |texto|
  expect(page.body).to match /#{texto}/m
end
>>>>>>> d92d2ebb0cd95f8ac23a51ffc4e1305af99cdbc7

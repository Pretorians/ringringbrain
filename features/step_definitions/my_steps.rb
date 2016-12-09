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
  end


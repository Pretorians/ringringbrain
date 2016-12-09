Given(/^abro la aplicación$/) do
  visit '/'
end

Given(/^Abrir pagina$/) do
    visit '/'
end

Then(/^"([^"]*)"$/) do |text|
 expect(page.body).to match /#{text}/m
end

When(/^Hacer clic en el boton Start$/) do |start|
   click_button(start)
end

When(/^Seleccionar mama$/) do
   select "mama", :from => "telefono"
end

When(/^Seleccionar papa$/) do
   select "papa", :from => "telefono"
end


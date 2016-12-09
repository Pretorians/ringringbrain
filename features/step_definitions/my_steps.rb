Given(/^Abrir pagina$/) do
    visit '/'
end

Given (/^Seleccionar mama$/) do
   select "mama", :from => "telefono"
end

Then(/^"([^"]*)"$/) do |text|
 expect(page.body).to match /#{text}/m
end

When(/^Hacer clic en el boton "([^"]*)"$/) do |start|
  click_button(start)
end

Given(/^ingresar el "([^"]*)"$/) do |numero|
  fill_in("numeroingresado", :with => numero)
end

When(/^presionar el boton adivinar$/) do
  click_button("adivinar")
end


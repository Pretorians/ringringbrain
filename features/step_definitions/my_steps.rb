Given(/^abro la aplicación$/) do
  visit '/'
end

When(/^inicio juego$/) do
  click_button("inicio")
end

Then(/^veo "([^"]*)"$/) do |texto|
  expect(page.body).to match /#{texto}/m
end
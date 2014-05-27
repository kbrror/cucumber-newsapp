Given(/^I am on the Home page$/) do
  '/'
end

Then(/^I follow "(.*?)"$/) do |arg1|  
	visit '/'
	#find_link(arg1)
	click_link(arg1)
end

Then(/^I fill in "(.*?)" with "(.*?)"$/) do |arg1, arg2|
  fill_in('Title', :with => arg1)
	fill_in('Content', :with => arg2)
end

Then(/^I press "(.*?)"$/) do |arg1|
  click_button(arg1)
end

Then(/^I should be on the home page$/) do
  visit '/'
  page.should have_content('content')
end

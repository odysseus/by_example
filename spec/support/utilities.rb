include ApplicationHelper

def valid_signin(user)
  fill_in "Email",      with: user.email
  fill_in "Password",   with: user.password
  click_button "Sign in"
end

def valid_signup()
  fill_in "Name",         with: "Example User"
  fill_in "Email",        with: "user@example.com"
  fill_in "Password",     with: "foobar"
  fill_in "Confirmation", with: "foobar"
end

RSpec::Matchers.define :flash_error do |message|
  match do |page|
    page.should have_selector('div.alert.alert-error', text: message)
  end
end

RSpec::Matchers.define :flash_success do |message|
  match do |page|
    page.should have_selector('div.alert.alert-success', text: message)
  end
end

RSpec::Matchers.define :have_title do |text|
  match do |page|
    page.should have_selector('title', text: text)
  end
end

RSpec::Matchers.define :have_heading do |text|
  match do |page|
    page.should have_selector('h1', text: text)
  end
end

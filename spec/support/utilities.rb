include ApplicationHelper

def sign_in(user)
  visit signin_path
  fill_in "Email",      with: user.email
  fill_in "Password",   with: user.password
  click_button "Sign in"
  # Sign in when not using Capybara as well
  cookies[:remember_token] = user.remember_token
end

def sign_up()
  fill_in "user_name",                    with: "Example User"
  fill_in "user_email",                   with: "user@example.com"
  fill_in "user_password",                with: "foobar"
  fill_in "user_password_confirmation",   with: "foobar"
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

Given "a Random User visits Sign In page" do
  visit '/sign_up'
  @random_user = {
    password: SecureRandom.hex,
    email: "#{SecureRandom.hex}@example.com"
  }
  # I would normally do this with a Factory.
end

When("email and password are left blank") do
  fill_in 'Email', with: '' # blank
  fill_in 'Password', with: '' # blank
  click_button 'Sign in'
end

When("email and password are incorrect {int} times") do | int |
  int.times do
    fill_in 'Email', with: @random_user[:email]
    fill_in 'Password', with: @random_user[:password]
    click_button 'Sign in'
  end
end

When("the Random User clicks {string} in the warning popup") do |string|
  # This could be replaced with a more generic step_definition.
  # However the "the Random User clicks {string} in the warning popup"
  # Provides good context for readablity at the feature file level.
  click_button 'I understand'
end

Then("error {string} is shown") do | text_string |
  # This is just my personal preference:
  # I could make this step definition more generic and not specific to errors.
  # From my previous experience with Cucumber, it can make the difficult of debug
  # when you have many 100's of step definitions. Not everyone is good at
  # naming their step definitions. Use Gherkin if you want that sort syntax.
  expect(page).to have_content("#{text_string}")
end

Then("Random User email is shown") do
  expect(page).to have_content(@random_user[:email])
end



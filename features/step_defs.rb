Given "a Random User visits Sign In page" do
  visit '/sign_up'
  @random_user = {
    password: SecureRandom.hex,
    email: "#{SecureRandom.hex}@example.com"
  }
  # I would normally do this with a Factory.
end




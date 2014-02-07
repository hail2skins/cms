def create_owner
	@owner = Owner.create!(first_name:            "Example",
												 last_name:             "User",
												 email: 		            "example@example.com",
												 password:              'password',
												 password_confirmation: 'password')
end


def sign_in  
	visit signin_path
	fill_in "Email", with: @owner[:email]
	fill_in "Password", with: @owner[:password]
	click_button "Sign in"
end
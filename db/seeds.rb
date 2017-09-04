@user = User.create(email: "test@test.com", password: "password", password_confirmation: "password", first_name: "Louis", last_name: "Randall")

puts "1 User created"

@admin_user = User.create(email: "admin@test.com", password: "password", password_confirmation: "password", first_name: "Admin", last_name: "User", type: "AdminUser")

puts "1 Admin User created"

100.times do |post|
	Post.create!(
		date: Date.today,
		rationale: "#{post} rationale content",
		user_id: @user.id
		)
end

puts "100 post have been created"
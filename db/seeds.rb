@user = User.create(email: "test@test.com", 
					password: "password", 
					password_confirmation: "password", 
					first_name: "Louis", 
					last_name: "Randall",
					phone: "4153048935" )

puts "1 User created"

@admin_user = User.create(email: "admin@test.com", 
						 password: "password", 
						 password_confirmation: "password", 
						 first_name: "Admin", last_name: "User", 
						 type: "AdminUser",
						 phone: "4153048935")

puts "1 Admin User created"

70.times do |post|
	Post.create!(
		date: Date.today,
		rationale: "#{post} rationale content",
		user_id: @user.id,
		overtime_request: 2.5
		)
end

20.times do |post|
	Post.create!(
		date: Date.today,
		rationale: "#{post} rationale content",
		user_id: @user.id,
		status: 'approved',
		overtime_request: 2.5
		)
end

10.times do |post|
	Post.create!(
		date: Date.today,
		rationale: "#{post} rationale content",
		user_id: @user.id,
		status: 'rejected',
		overtime_request: 2.5
		)
end

puts "100 post have been created"
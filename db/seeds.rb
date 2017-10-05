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

	AuditLog.create!(
		user_id: @user.id, 
		status: 0, 
		start_date: (Date.today - 6.days), 
		end_date: nil
		)

	AuditLog.create(
		user_id: @user.id, 
		status: 0, 
		start_date: (Date.today - 13.days), 
		end_date: nil
		)

	AuditLog.create(
		user_id: @user.id, 
		status: 0, 
		start_date: (Date.today - 20.days), 
		end_date: nil
		)

puts '3 audit logs created'

puts "1 Admin User created"

70.times do |post|
	Post.create!(
		date: Date.today,
		rationale: "#{post} Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
		user_id: @user.id,
		overtime_request: 2.5
		)
end

20.times do |post|
	Post.create!(
		date: Date.today,
		rationale: "#{post} Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
		user_id: @user.id,
		status: 'approved',
		overtime_request: 2.5
		)
end

10.times do |post|
	Post.create!(
		date: Date.today,
		rationale: "#{post} Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
		user_id: @user.id,
		status: 'rejected',
		overtime_request: 2.5
		)
end

puts "100 post have been created"






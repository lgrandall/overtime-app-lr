namespace :notification do
  desc "Sends SMS notification to employees asking them to log if they had overtime, or not."
  task sms: :environment do
    if Time.now.sunday?
      employees = Employee.all 
      notification_message = "Please log into the Overtime Management Dashboard to request overtime or confirm hours worked within the last week"

      employees.each do |employee|
        AuditLog.create!(user_id: employee.id )
        SmsTool.send_sms(number: employee.phone, message: notification_message)
      end
    
  	# Schedule to run every Sunday at 5pm
  	# Iterate over all employees
  	# Skip admin uers
  	# Send a message with instructions and a link to log time
    end
  end

    desc "Sends mail notification to managers (admin users) aeach day to inform of pending overtime request."
  task manager_email: :environment do
  	submitted_posts = Post.submitted 
  	admin_users = AdminUser.all 

  	if submitted_posts.count > 0
  		admin_users.each do |admin|
  			ManagerMailer.email(admin).deliver_now
  		end
  	end

  end

end

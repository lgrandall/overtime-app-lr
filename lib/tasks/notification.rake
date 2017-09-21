namespace :notification do
  desc "Sends SMS notification to employees asking them to log if they had overtime, or not."
  task sms: :environment do
  	# Schedule to run every Sunday at 5pm
  	# Iterate over all employees
  	# Skip admin uers
  	# Send a message with instructions and a link to log time
  end

end

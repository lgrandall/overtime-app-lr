100.times do |post|
	Post.create!(
		date: Date.today,
		rationale: '#{rationale} rationale content'
		)
end

puts "100 post have been created"
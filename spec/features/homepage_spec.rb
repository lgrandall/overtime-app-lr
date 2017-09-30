require 'rails_helper'

describe 'homepage' do
	let (:admin_user) {FactoryGirl.create(:admin_user)}
	let (:user) {FactoryGirl.create(:user)}

	it 'allows the admin to approve post from the homepage' do 
		login_as(admin_user, :scope => :user)
		post = FactoryGirl.create(:post)
		visit root_path 
		click_on("approve_#{post.id}")

		expect(post.reload.status).to eq('approved')
	end
end


require 'rails_helper'

describe 'Audit Log Features' do
	let(:admin_user) {FactoryGirl.create(:admin_user)}
	let(:audit_log) {FactoryGirl.create(:audit_log, user_id: admin_user.id)}

	before do
		login_as(admin_user, :scope => :user) 
	end

	it 'can be successfully created' do
		expect(audit_log).to be_valid
	end

	describe 'Index' do 
		before do 
			FactoryGirl.create(:audit_log)
			visit audit_logs_path
		end
		it 'has an index page that can be successfully reached' do
			expect(page.status_code).to eq(200)
		end

		it 'renders audit log content' do
			visit audit_logs_path
			expect(page).to have_content(/Louis/)
		end

		it 'cannot be accessed by non admin users' do
			logout(:user)
			@user = FactoryGirl.create(:user)
			login_as(@user, :scope => :user)
			
			visit audit_logs_path

			expect(current_path).to eq(root_path)
		end
	end
end
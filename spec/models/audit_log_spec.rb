require 'rails_helper'

RSpec.describe AuditLog, type: :model do 
	let(:user) {FactoryGirl.create(:user)}
	let(:audit_log) {FactoryGirl.create(:audit_log, user_id: user.id)}


	describe 'creation' do
		it "can be properly created" do
			expect(audit_log).to be_valid
		end
	end	

	describe 'validations' do
		it 'should be required to have a user association' do
			audit_log.user_id = nil
			expect(audit_log).to_not be_valid
		end

		it 'should be required to have a status' do
			audit_log.status = nil
			expect(audit_log).to_not be_valid
		end

		it 'should be required to have a start date' do
			audit_log.start_date = nil
			expect(audit_log).to_not be_valid
		end

		it 'should be required to have a start date equal to 6 days prior' do
			new_audit_log = AuditLog.create(user_id: user.id)
			expect(new_audit_log.start_date).to eq(Date.today - 6.days)
		end
	end
end



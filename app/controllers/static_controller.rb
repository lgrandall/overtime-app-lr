class StaticController < ApplicationController
	def homepage
		@pending_approvals = Post.all.where(status: 'submitted')
		@pending_audit_logs = AuditLog.all.where(stauts: 'pending')
	end
end
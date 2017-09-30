class HomepagePolicy < ApplicationPolicy

	def approve?
		return true if admin?
	end

	private

	def admin
		admin_types.include?(user.try(:type))
	end

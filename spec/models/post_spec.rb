require 'rails_helper'

RSpec.describe Post, type: :model do
  describe "Creation" do
    before do
      @user = FactoryGirl.create(:user)
      login_as(@user, :scope => :user)
      @post = FactoryGirl.build_stubbed(:post)
    end

    it 'can be created' do  
      expect(@post).to be_valid
    end

    it 'cannot be created without a date, rationale, and an overtime request' do
      @post.date = nil
      @post.rationale = nil
      @post.overtime_request = nil
      expect(@post).to_not be_valid
    end

    it 'has an overtime request that is greater than 0.0' do
      @post.overtime_request = 0.0
      expect(@post).to_not be_valid
    end
  end
end

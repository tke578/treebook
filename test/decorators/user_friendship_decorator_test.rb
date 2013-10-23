require 'test_helper'

class UserFriendshipDecoratorTest < Draper::TestCase
	context "with a pending user friendship" do
		context "#friendship_state" do
			setup do
				@suer_friendship = create(:pending_user_friendship)
				@decorator = UserFriendshipDecorator.decorate(@user_friendship)
			end

			should "return Pending" do
				assert_equal "Pending", @decorate.friendship_state
		end
	end
end

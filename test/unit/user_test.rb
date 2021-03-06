require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "a user should enter a first name" do 
  	user = User.new
  	assert !user.save
  	assert !user.errors[:first_name].empty?
  end
  test "a user should enter a last name" do 
  	user = User.new
  	assert !user.save
  	assert !user.errors[:last_name].empty?
  end
  test "a user should enter a profile" do 
  	user = User.new
  	assert !user.save
  	assert !user.errors[:profile_name].empty?
  end
  test "a user should have a unique profile name" do 
  	user = User.new
  	user.profile_name = 'Crispy'
  	user.email = 'yahoo@yahoo.com'
  	user.first_name = 'Bobby'
  	user.last_name = 'Smith'
  	user.password = 'password'
  	user.password_confirmation = 'password'

  	assert !user.save
  	assert !user.errors[:profile_name].empty?
  end
  test "a user can have a correctly formatted profile name" do
    user = User.new(first_name: 'Jason', last_name: 'Smith', email: 'jose@jose.com')
    user.password = user.password_confirmation = '123456'
    user.profile_name = "jasonsmith"
    assert user.valid?
  end
end 

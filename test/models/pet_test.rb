require 'test_helper.rb'

class PetTest < ActiveSupport::TestCase
	should "should not have a name with two characters" do
		u = Pet.new
		u.name = "he"
		assert_not u.save
	end
	should "should not have a name with 20 characters" do
		u = Pet.new
		u.name = "12345678912345678900"
		assert_not u.save
	end
	should "should have a name defined" do
		u = Pet.new
		u.color = "blue"
		assert_not u.save
	end
	should "should have a color defined" do
		u = Pet.new
		u.name = "Sam"
		assert_not u.save
	end

end
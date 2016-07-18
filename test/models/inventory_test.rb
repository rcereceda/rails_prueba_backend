require 'test_helper'

class InventoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "serial number can't be repeated" do 
  	Inventory.create(serial: 123456)
  	i = Inventory.new(serial: 123456)
  	assert_not i.valid?
  end
end

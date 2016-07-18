require 'test_helper'

class WorkTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
  	@work = works(:one)
  end

  test "work must have a user" do
  	assert_not_nil @work.user_id
  end
end

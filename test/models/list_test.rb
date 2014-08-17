# == Schema Information
#
# Table name: lists
#
#  id          :integer          not null, primary key
#  title       :string(30)
#  description :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

require 'test_helper'

class ListTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

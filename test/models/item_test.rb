# == Schema Information
#
# Table name: items
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  checked      :boolean
#  due_datetime :datetime
#  created_at   :datetime
#  updated_at   :datetime
#  list_id      :integer
#

require 'test_helper'

class ItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

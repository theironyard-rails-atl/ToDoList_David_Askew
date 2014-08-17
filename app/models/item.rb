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

class Item < ActiveRecord::Base
  belongs_to :list
end

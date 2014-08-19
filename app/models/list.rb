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

class List < ActiveRecord::Base
  has_many :items
  belongs_to :user
end

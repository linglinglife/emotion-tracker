# == Schema Information
#
# Table name: feelings
#
#  id          :integer          not null, primary key
#  scale       :integer
#  title       :text
#  description :text
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Feeling < ApplicationRecord
  
  belongs_to :user, optional: true
  
  has_many :comments
  
  validates :scale, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 10}
  
  validates :title, presence: true
  
end

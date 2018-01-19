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
  
end

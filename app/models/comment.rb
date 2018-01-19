# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  title      :text
#  body       :text
#  feeling_id :integer
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Comment < ApplicationRecord
  
  belongs_to :user, optional: true
  
  belongs_to :feeling, optional: true
  
end

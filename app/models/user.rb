# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :text
#  email           :text
#  password_digest :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ApplicationRecord
  
  has_many :feelings
  has_many :comments 
  
  has_secure_password
  
  validates :email, presence: true, uniqueness: true
  
end

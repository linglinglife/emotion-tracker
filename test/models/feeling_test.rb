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

require 'test_helper'

class FeelingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

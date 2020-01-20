# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  first_name :text
#  status     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_users_on_status  (status)
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

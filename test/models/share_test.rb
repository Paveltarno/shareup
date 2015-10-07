# == Schema Information
#
# Table name: shares
#
#  id           :integer          not null, primary key
#  from_user_id :integer
#  to_user_id   :integer
#  to_email     :string
#  created_at   :datetime         not null
#  url          :string
#  updated_at   :datetime         not null
#

require 'test_helper'

class ShareTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

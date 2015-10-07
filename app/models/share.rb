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

class Share < ActiveRecord::Base
  belongs_to :from, foreign_key: "from_user_id", class_name: "User"
  belongs_to :to, foreign_key: "to_user_id", class_name: "User"
end

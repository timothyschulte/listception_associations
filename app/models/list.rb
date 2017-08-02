# == Schema Information
#
# Table name: lists
#
#  id             :integer          not null, primary key
#  title          :string
#  board_id       :integer
#  position_order :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class List < ApplicationRecord
end

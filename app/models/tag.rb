# == Schema Information
#
# Table name: tags
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Tag < ApplicationRecord
  validates :name, :uniqueness => :true
  has_many :cards, :class_name => "Card", :foreign_key => "_id"
end

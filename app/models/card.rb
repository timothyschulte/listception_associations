# == Schema Information
#
# Table name: cards
#
#  id             :integer          not null, primary key
#  title          :string
#  description    :text
#  list_id        :integer
#  position_order :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Card < ApplicationRecord
    
belongs_to :list, :class_name => "List", :foreign_key => "list_id"
has_many :notes
has_many :taggings
has_many :tags, through: :taggings


end

class Tagging < ApplicationRecord
  validates :card_id, :uniqueness => { :scope => :tag_id }
end

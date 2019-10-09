class MilitaryCard < ApplicationRecord
  belongs_to :militarycardtype, optional: true
  has_many :users
end

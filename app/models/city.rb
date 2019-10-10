class City < ApplicationRecord
  belongs_to :state
  has_many :users
  has_many :enterprises
  has_many :correspondenceaddresses
end

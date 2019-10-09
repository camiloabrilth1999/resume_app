class Enterprise < ApplicationRecord
  belongs_to :city, optional: true
  belongs_to :enterprisetype, optional: true
  has_many :employents
end

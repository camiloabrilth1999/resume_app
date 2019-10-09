class OcupationExperince < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :ocupation, optional: true
end

class UserAcademicModality < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :academicmodality, optional: true
end

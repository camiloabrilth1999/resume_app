class UserIdiom < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :idiom, optional: true
end

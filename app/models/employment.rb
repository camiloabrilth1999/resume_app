class Employment < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :enterprise, optional: true
end

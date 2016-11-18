class Experience < ApplicationRecord
  belongs_to :organization
  belongs_to :profession
  belongs_to :city
  belongs_to :user
end

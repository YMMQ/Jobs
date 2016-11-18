class Institute < ApplicationRecord
  has_many :education
  belongs_to :city
end

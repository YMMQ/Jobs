class City < ApplicationRecord
  belongs_to :province
  has_many :institute
  has_many :addv
  has_many :experience
end

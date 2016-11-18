class Addv < ApplicationRecord
  has_many :add_profession
  belongs_to :newspaper
  belongs_to :city
  belongs_to :organization
end

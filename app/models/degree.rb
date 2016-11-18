class Degree < ApplicationRecord
  belongs_to :t_degree
  has_many :education
end

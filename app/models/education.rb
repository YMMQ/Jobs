class Education < ApplicationRecord
  belongs_to :institute
  belongs_to :degree
  belongs_to :user
end

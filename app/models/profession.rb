class Profession < ApplicationRecord
    has_many :add_profession
    has_many :experience
end

class Superhero < ApplicationRecord
	has_one :superpower
	validates :super_name, uniqueness: true
end

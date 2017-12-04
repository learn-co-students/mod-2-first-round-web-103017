class Superhero < ApplicationRecord
  belongs_to :superpower

  validates :name, presence: true, uniqueness: true

end

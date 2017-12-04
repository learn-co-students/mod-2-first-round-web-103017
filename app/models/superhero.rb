class Superhero < ApplicationRecord
  validates :superhero, :uniqueness => {:scope => :name}

end

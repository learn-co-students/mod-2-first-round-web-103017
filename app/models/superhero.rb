class Superhero < ApplicationRecord
  belongs_to :superpower
  validates :super_name, uniqueness: true


  def self.filter_superheroes_by_superpower(superpower_name)
    filtered_superpower = Superpower.find_by(name: superpower_name)
    filtered_superpower.superheroes
  end

  def superpower_name
    self.superpower.name
  end
end

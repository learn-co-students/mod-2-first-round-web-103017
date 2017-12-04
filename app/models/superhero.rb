class Superhero < ApplicationRecord
  belongs_to :superpower
  validates :super_name, uniqueness: true

  def self.search(search)
    Superhero.joins(:superpower).where('superpowers.name = ?', "#{search}")
  end
end

class Superhero < ApplicationRecord
  belongs_to :superpower
  validates :super_name, uniqueness: true

  def self.search(search)
    power = Superpower.find_by(name: search)
    where("superpower_id LIKE ?", "%#{power.id}%")
  end
end

class Superhero < ApplicationRecord
  belongs_to :superpower

  validates :super_name, uniqueness: true

  def self.search(search)
    sp = Superpower.find_by(name: search)

    if sp
      where("superpower_id = ?", sp.id)
    else
      []
    end
  end
end

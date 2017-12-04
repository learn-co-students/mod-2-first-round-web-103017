class Superhero < ApplicationRecord
  has_one :superpower

  def to_int
    if params[:id].class == String
      params[:id].to_i
    end
  end
end

class SuperpowersController < ApplicationController
  def index
    if params.values.include?("Search")
      @superpowers = Superpower.search(params[:superpower])
    else
      @superpowers = Superpower.all
    end
  end

  def show
    @superpower = Superpower.find(params[:id])
  end

  def self.search(term)
    if term
      where('name LIKE ?', "%#{term}%").order('id DESC')
    else
      order('id DESC')
    end
  end

end

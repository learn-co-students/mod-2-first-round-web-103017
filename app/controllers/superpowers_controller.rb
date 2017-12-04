class SuperpowersController < ApplicationController
  def index
    @powers = Superpower.all
  end

  def show
    @power = Superpower.find(params[:id])
  end

end

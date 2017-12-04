class SuperpowersController < ApplicationController
  def index
    @superpowers = Superpower.all
  end

  def show
    @superpower = Superpower.find(params[:id])
  end

  # def search
  #   @superpower = Superpower.find_by(name: params[:name])
  #   @superheroes = @superpower.superheroes
  #   redirect_to superheroes_path
  #
  # end
end

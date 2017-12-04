class SuperheroesController < ApplicationController

  def new
    @superhero = Superhero.new
  end

  def create
    @superhero = Superhero.create(hero_params)
    @id = @superhero.id
    redirect_to superhero_path(@id)
  end

  def index
    @superheroes = Superhero.all
  end

  def show
    @superhero = Superhero.find(params[:id])
  end



  private

  def hero_params
    params.require(:superhero).permit(:name, :description, :superpower_id)
  end



end

class SuperheroesController < ApplicationController
  def index
    @superheroes = Superhero.all
  end

  def new
    @superhero = Superhero.new
  end

  def show
    @superhero = Superhero.find(params[:id])
    @superpower = Superpower.find(params[:id])
  end

  def create
    @superhero = Superhero.create(superhero_params)

  end

  private def superhero_params
    params.require(:superhero).permit(:name, :super_name, superpower_ids:[])
  end
end

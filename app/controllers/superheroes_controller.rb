class SuperheroesController < ApplicationController

  def index
    @superheroes = Superhero.all

    if params[:search]
      @superpower_id = Superpower.find_by(name: params[:search])
      @superheroes = Superhero.where(superpower: @superpower_id)
    end

  end

  def show
    @superhero = Superhero.find(params[:id])
  end

  def create
    @superhero = Superhero.find_or_create_by(superhero_params)
    redirect_to superhero_path(@superhero)
  end

  def new
    @superhero = Superhero.new
    @superpowers = Superpower.all
  end

  private

  def superhero_params
    params.require(:superhero).permit(:name, :super_name, :superpower_id)
  end

end

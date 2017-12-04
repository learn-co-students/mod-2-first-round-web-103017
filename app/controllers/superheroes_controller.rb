class SuperheroesController < ApplicationController
  def index
    @superheroes = Superhero.all

  end

  def show
    @superhero = Superhero.find(params[:id])
  end

  def new
    @superhero = Superhero.new
  end

  def create
    byebug
    if params[:id].class == String
      params[:id].to_i
    end
    @superhero = Superhero.find_or_create_by(superhero_params)

    redirect_to superhero_path(@superhero)
  end


  private

  def superhero_params
    params.require(:superhero).permit(:name, :super_name, :superpower_id)
  end
end

class SuperheroesController < ApplicationController
  def index
    @superheroes = Superhero.all
    @superpowers = Superpower.all
  end

  def show
    @superhero = Superhero.find(params[:id])
  end

  def new
    @superhero = Superhero.new
    @superpowers = Superpower.all
  end

  def create
    @superhero = Superhero.create(superhero_params)
    if @superhero.save
      redirect_to superhero_path(@superhero)
    else

      redirect_to new_superhero_path
    end
  end

  private

  def superhero_params
    params.require(:superhero).permit(:name, :super_name, :superpower_id)
  end


end

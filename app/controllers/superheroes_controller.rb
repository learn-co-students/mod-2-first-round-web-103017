class SuperheroesController < ApplicationController
  def index
    @superheroes = Superhero.all
  end

  def show

    @superhero = Superhero.find(params[:id])
    @superpower = Superpower.find(@superhero.superpower_id)
  end
  def new
    @superhero = Superhero.new
  end
  def create
    @superhero = Superhero.create(super_params(:name, :super_name, :superpower_id))
    redirect_to superheroes_path(@superhero)
  end

  def search
    @superpower = Superpower.find_by(name: params[:q])
    @superheroes = Superhero.find_by(superpower_id: @superpower.id)
    #byebug
    redirect_to superheros_path

    #@superheros = Superhero.find_by(:)

  end


  private

  def super_params(*args)
    params.require(:superhero).permit(args)
  end
end

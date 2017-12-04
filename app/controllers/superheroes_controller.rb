class SuperheroesController < ApplicationController
  def index
      byebug
    if params[:superpower]
      @superheroes = Superhero.where('store LIKE ?', "%#{params[:superpower]}%")
    else
      @superheroes = Superhero.all
    end
  end

  def new
    @superhero = Superhero.new
    @superpower = Superpower.all
  end

  def create
    @superhero = Superhero.create(superhero_params(:name, :super_name, :superpower_id))
    redirect_to superhero_path(@superhero)
  end

  def show
    @superhero = Superhero.find(params[:id])
  end

  private

  def superhero_params(*args)
    params.require(:superhero).permit(*args)
  end
end

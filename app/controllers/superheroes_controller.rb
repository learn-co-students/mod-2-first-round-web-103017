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
    @superhero = Superhero.new(superheroparams)
    if @superhero.valid?
      @superhero.save
      redirect_to superhero_path(@superhero)
    else
      redirect_to new_superhero_path(@superhero)
    end
  end





  private

  def superheroparams
    params.require(:superhero).permit(:name, :super_name, :superpower_id)
  end

end

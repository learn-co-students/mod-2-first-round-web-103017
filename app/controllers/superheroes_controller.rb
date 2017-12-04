class SuperheroesController < ApplicationController
  def index
    if params[:superpower]
      @superheroes = Superhero.all.where(superpower: Superpower.find_by(name: params[:superpower]))
    else
      @superheroes = Superhero.all
    end
  end

  def show
    @superhero = Superhero.find(params[:id])
  end

  def new
    @superhero = Superhero.new
  end

  def create
    @superhero = Superhero.new(superhero_params)
    if @superhero.valid?
      @superhero.save
      redirect_to superhero_path(@superhero)
    else
      render :new
    end
  end

  def superhero_params
    params.require(:superhero).permit(:name, :super_name, :superpower_id)
  end

end

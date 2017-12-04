class SuperheroesController < ApplicationController
  def index
    if params[:super_power]
      @superheroes = Superhero.all.select{|hero| hero.superpower.name == params[:super_power]}
    else
      @superheroes = Superhero.all
    end
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
    if @superhero.valid?
      redirect_to superhero_path(@superhero)
    else
      @superpowers = Superpower.all
      render :new
    end
  end

  private

  def superhero_params
    params.require(:superhero).permit(:name, :super_name, :superpower_id)
  end

end

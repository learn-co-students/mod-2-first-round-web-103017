class SuperheroesController < ApplicationController

  def index
    if params[:search]
      @superheroes = Superhero.search(params[:search])
    else
      @superheroes = Superhero.all
    end
  end

  def show
    @hero = Superhero.find(params[:id])
  end

  def new
    @hero = Superhero.new
  end

  def create
    @hero = Superhero.new(hero_params(:name, :super_name, :superpower_id))

    if @hero.valid?
      @hero.save
    end
    redirect_to superhero_path(@hero)
  end

private

  def hero_params(*args)
    params.require(:superhero).permit(*args)
  end

end

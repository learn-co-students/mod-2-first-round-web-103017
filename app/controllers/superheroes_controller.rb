class SuperheroesController < ApplicationController
  def index
    # raise params.inspect
    @superheroes = Superhero.all
    if params[:search]
      if params[:search] != ""
        @superheroes = Superhero.search(params[:search])
      else
        @superheroes = Superhero.all
      end
    else
      @superheroes = Superhero.all
    end
  end

  def show
    @superhero = Superhero.find(params[:id])
  end

  def new
    @superhero = Superhero.new
    # @superpowers = Superpower.all
  end

  def create
    # raise params.inspect
    # @superhero = Superhero.create(superhero_params(:name, :super_name, :superpower_id))
    # redirect_to superhero_path(@superhero)

    @superhero = Superhero.new(superhero_params(:name, :super_name, :superpower_id))
    if @superhero.save
      redirect_to superhero_path(@superhero)
    else
      render :new
    end
  end

  private

  def superhero_params(*args)
    params.require(:superhero).permit(*args)
  end
end

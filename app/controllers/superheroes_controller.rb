class SuperheroesController < ApplicationController

  def index
    if params[:q].nil? || Superpower.where(name: params[:q]).empty?
      @superheroes = Superhero.all
    else
      sp_id = Superpower.where(name: params[:q]).first.id
      @superheroes = Superhero.where(superpower_id: sp_id)
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
    if @superhero.save
      redirect_to superhero_path(@superhero)
    else
      render :new
    end
  end

  private

  def superhero_params
    params.require(:superhero).permit(:name, :super_name, :superpower_id)
  end
end

class SuperheroesController < ApplicationController
  def index
    @superheroes = Superhero.all
  end

  def show
    @superhero = Superhero.find(params[:id])
    @superpower = @superhero.superpower
  end

  def new
    @superhero = Superhero.new
  end

  def create
    @superhero = Superhero.create(superhero_params)
    redirect_to superhero_path(@superhero)
  end
  # 
  # def search
  #   @projects = Project.search(params[:search])
  # end
  private

  def superhero_params
    params.require(:superhero).permit(:super_name, :name, :superpower_id)
  end

end

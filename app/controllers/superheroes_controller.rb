class SuperheroesController < ApplicationController
  def index
    if params[:query]
      @superpowers = Superpower.find_by(name: params[:query])
      render :search
    else
      @superheroes = Superhero.all
    end

  end

  def new
  	@superhero = Superhero.new
  end 

  def show
  	@superhero = Superhero.find(params[:id])
  	@superpower = Superpower.find(@superhero.superpower_id)
  end 

  def create
  	#byebug

  	@superhero = Superhero.new(super_params)

  	if @superhero.valid?
  		@superhero.save
  		redirect_to superhero_path(@superhero)
  	else
  		render :new
  	end


  end

  private

  def super_params
  	params.require(:superhero).permit(:name, :super_name, :superpower_id)
  end


end

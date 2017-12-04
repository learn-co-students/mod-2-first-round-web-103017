class SuperpowersController < ApplicationController
  def index
    @superpowers = Superpower.all
  end

  def new
    @superpower = Superpower.new
  end

  # def create
  #   @superpower = Superpower.create(superpower_params)
  #   redirect_to superpower_path(@superpower)
  # end

  def show
    @superpower = Superpower.find(params[:id])
  end

end

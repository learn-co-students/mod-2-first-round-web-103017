class SuperpowersController < ApplicationController
  def index
    @superpowers = Superpower.all
  end

  def show
    @superpower = Superpower.find(params[:id])
  end

  def new
  end

  def create
    @superpower = Superpower.create(superpower_params)
    redirect_to superpower_path(@superpower)
  end



  private
  def superpower_params
    params.require(:superpower).permit(:name, :description)
  end
end

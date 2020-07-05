class PetsController < ApplicationController
  def index
    @pets = Pet.all
  end

  def show
    @pet = Pet.find(params[:id])
  end

  def new
  end

  def create
    Pet.create(pet_params)
    redirect_to "/shelters/#{params[:shelter_id]}/pets"
  end

  private

  def pet_params
    params.permit(:name, :age, :sex, :description, :image, :status, :shelter_id)
  end
end

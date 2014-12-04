class PetPetsController < ApplicationController
	def new_petpet
		@id = params[:pet_id]
		puts 5
		puts params
	end

	def create
		@pet = Pet.find(params[:id])
		@pet_pet = PetPet.new(pet_pet_params)
		@pet_pet.pet_id = @pet.id
		@pet_pet.save
		redirect_to user_path(User.find(Pet.find(params[:id]).user_id))
	end

	def index
		@pet_pet = PetPet.all
	end


	def show
		@pet_pet = PetPet.find params[:id]
	end

	private

	def pet_pet_params
		params.require(:pet_pet).permit(:name, :color)
	end
end

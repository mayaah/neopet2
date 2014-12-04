class PetsController < ApplicationController
	def new
		@id = params[:id]
	end

	def adopt
		@pet = Pet.find(params[:id])
		@pet.user_id = current_user.id
		@user = User.find(@pet.user_id)
		if @user.neocoin == nil
			@user.neocoin = 3
		else
			@user.neocoin += 3
		end	
		@user.save
		if @pet.save
			redirect_to user_path(@pet.user_id)
		end
	end

	def feed
		@pet = Pet.find(params[:id])
		@user = User.find(@pet.user_id)
		if @user.neocoin <= 0
			flash[:error] = @pet.errors.full_messages.to_sentence
		else
			@user.neocoin -= 1
			@pet.hunger += 10
		end
		@user.save
		@pet.save
		redirect_to user_path(@pet.user_id)
	end

	def create
		@pet = Pet.new(pet_params)
		@pet.hunger = 50
		@pet.loyalty = 50
		@pet.user_id = current_user.id
		if @pet.save
			redirect_to user_path(User.find(@pet.user_id))
		else
			flash[:error] = @pet.errors.full_messages.to_sentence
			redirect_to user_path(User.find(@pet.user_id))
		end
	end

	def createpetpet
		@pet = Pet.find(params[:id])
		@pet_pet = PetPet.new(pet_pet_params)
		@pet_pet.pet_id = @pet.id
		@pet_pet.save
		redirect_to user_path(User.find(Pet.find(params[:id]).user_id))
	end

	def index
    	@pets = Pet.all
  	end

	def show
		@pet = Pet.find params[:id]
	end

	private

	def pet_params
		params.require(:pet).permit(:name, :color)
	end

	def pet_pet_params
		params.require(:pet_pet).permit(:name, :color)
	end
end

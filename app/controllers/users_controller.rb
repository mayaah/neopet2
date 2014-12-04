class UsersController < ApplicationController
  before_filter :authenticate_user!

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    unless @user == current_user
      redirect_to :back, :alert => "Access denied."
    end
  end

  def battle
    @pet = Pet.find(params[:id])
    success_rate = Random.new.rand(1..100)
    # if (success_rate <= 75)
      @pet.hunger -= 5
      @pet.loyalty += 10
      @user = User.find(@pet.user_id)
      @user.neocoin += 1
    # else
    #   @pet.hunger -= 5
    #   @pet.loyalty -= 15   
    # end
    @user.save
    @pet.save
    redirect_to user_path(@pet.user_id)
  end

end

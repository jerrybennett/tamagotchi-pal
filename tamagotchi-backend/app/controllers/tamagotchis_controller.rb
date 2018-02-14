class TamagotchisController < ApplicationController
  def index
    @tamagotchis = Tamagotchi.all
    render json: @tamagotchis
  end

  def show
    @tamagotchi = Tamagotchi.find(params[:id])
    render json: @tamagotchi
  end

  def create
    @tamagotchi = Tamagotchi.create(tamagotchi_params)
    render json: @tamagotchi
  end

  def update
    @tamagotchi = Tamagotchi.find(params[:id])

    # byebug
    if params[:bump] == "love"
      @tamagotchi.love =  @tamagotchi.love + 1
    elsif params[:bump] == "strength"
      @tamagotchi.strength = @tamagotchi.strength + 1
    end

    @tamagotchi.save

    render json: @tamagotchi
  end

  def destroy
    @tamagotchi = Tamagotchi.find(params[:id])
    @tamagotchi.destroy
  end

  private
  def tamagotchi_params
    params.require(:tamagotchi).(:love, :strength, :name, :owner, :age)
  end
end

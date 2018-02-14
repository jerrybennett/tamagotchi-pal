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
    @tamagotchi.update(tamagotchi_params)
    render json: @tamagotchi
  end

  def destroy
    @tamagotchi = Tamagotchi.find(params[:id])
    @tamagotchi.destroy
  end

  private
  def tamagotchi_params
    params.require(:tamagotchi).permit(:love, :strength, :name, :owner, :age)
  end
end

class PokemonsController < ApplicationController
  def new
    @pokemon = Pokemon.new
  end

  def create
    @pokemon = Pokemon.new(pokemon_params)
    @pokemon.health = 100
    @pokemon.level = 1
    @pokemon.trainer_id = current_trainer.id
    if @pokemon.save
      redirect_to trainer_path(id: current_trainer.id)
    else
      redirect_to new_path, :flash => { :error => "Give your pokemon a unique name!"}
    end 
  end

  def capture
    @pokemon = Pokemon.find(params[:id])
    @pokemon.update(:trainer_id => current_trainer.id)
    @pokemon.save

    redirect_to "/"
  end

  def damage
    @pokemon = Pokemon.find(params[:id])
    @pokemon.health = @pokemon.health - 10

    if @pokemon.health <= 0
      @pokemon.destroy
    else
      @pokemon.save
    end

    redirect_to trainer_path(id: @pokemon.trainer_id)
  end

  private
    def pokemon_params
      params.require(:pokemon).permit(:name, :ndex)
    end
end

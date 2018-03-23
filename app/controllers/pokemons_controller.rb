class PokemonsController < ApplicationController
  def new
    @pokemon = Pokemon.new
  end

  def capture
    @pokemon = Pokemon.find(params[:id])
    @pokemon.trainer_id = current_trainer().id
    @pokemon.save
    redirect_to root_path
  end



  def create
    @pokemon = Pokemon.new(pokemon_params)
    @pokemon.level =  6
    @pokemon.health = 100
    @pokemon.trainer_id = current_trainer().id
    if @pokemon.save
        redirect_to trainer_path(id: current_trainer().id)
    else
        flash[:error] = @pokemon.errors.full_messages.to_sentence
        redirect_to new_pokemon_path
    end
  end

  private
  def pokemon_params
    params.require(:pokemon).permit(:name, :ndex)
  end

end

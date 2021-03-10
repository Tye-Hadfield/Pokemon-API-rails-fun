class HomeController < ApplicationController

  def search

  end


  def pokemon

    rawsearchedpokemon = params[:searchedpokemon]
    scrubbedsearchedpokemon = rawsearchedpokemon[:name].downcase




    begin
        @pokemon = PokeApi.get(pokemon: scrubbedsearchedpokemon )
    rescue JSON::ParserError
      flash[:error] = "Please check spelling of Pokemons name"
      redirect_to search_path
    else
      @pokemon = PokeApi.get(pokemon: scrubbedsearchedpokemon )
    end
    

  end


end

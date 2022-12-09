class GamesController < ApplicationController
  def show # show 1 game
    @game = Game.find(params[:id])
  end

  def index # show all games
    @games = Game.all
  end

  def new # give user form to add new game
    @game = Game.new
  end

  def create # catch user form to create new game
    @game = Game.new(game_params)
    if @game.save
      redirect_to games_path
    else
      render :new
    end
  end

  def edit # give user form to edit game
  end

  def update # catch user form to update game
  end

  def destroy # delete game
    @game = Game.find(params[:id])
    @game.destroy
    redirect_to games_path
  end

  private

  def game_params # strong params for safety
    params.require(:game).permit(:name, :genre, :price)
  end
end

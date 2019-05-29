class GamesController < ApplicationController

  # GET /games
  def index
    @games = Game.all.includes(:winner)
  end

  # POST /games
  def create
    @game = Game.new(game_params)

    if @game.save
      render json: @game, status: :created, location: @game
    else
      render json: @game.errors, status: :unprocessable_entity
    end
  end

  private

    # Only allow a trusted parameter "white list" through.
    def game_params
      params.require(:game).permit(:winner_id, :winner_score, :loser_id, :loser_score)
    end
end

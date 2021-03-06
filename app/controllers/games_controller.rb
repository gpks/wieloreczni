class GamesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_game, only: [:show, :edit, :update, :destroy, :add]
  before_action :set_review, only: [:show]


  def index
    @games = Game.all
    @review = Rating.new
  end

  def add
    @game_user = GamesUser.new(game: @game, user: current_user)

    if @game_user.save
      head :ok
    else
      render json: @game_user.errors.full_messages, status: :unprocessable_entity
    end    
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)
    if @game.save 
      redirect_to @game, notice: 'Game was successfully created.'
    else
      render :new
    end
  end

  def show
     
  end

  def edit
  new 

  


  def update
    if @game.update(game_params)
      redirect_to @game, notice: 'Game was successfully created.'
    else
      render :edit
    end
  end

  def destroy
    @game.destroy
    redirect_to games_index_path, notice: "Game is no longer here"
  end

end
  

 private
    # Use callbacks to share common setup or constraints between actions.
    def set_game
      @game = Game.find(params[:id])
    end

    def set_review
      @existing_review = Rating.where(game: @game, user: current_user).first_or_initialize
    end


    # Never trust parameters from the scary internet, only allow the white list through.
    def game_params
      params.require(:game).permit(:name, :description, :genre, :game_id, :minplayer, :maxplayer, :minage)
    end

end


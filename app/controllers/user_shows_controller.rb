class UserShowsController < ApplicationController
  before_action :set_user, only: [:show, :removegame]

  def index
    @users = User.all
  end

  def show
  end
  

  def removegame
    
      @user.games.delete(params[:type])
      redirect_to :back, notice: "Game was removed from shelf"
  end

end

private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

   


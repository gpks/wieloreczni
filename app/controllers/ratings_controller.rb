class RatingsController < ApplicationController
  before_action :set_rating, only: [:edit, :update]

  def new
    @review = Rating.new
  end

  def create
    @review = Rating.new(rating_params)
    if @review.save 
      redirect_to games_path, notice: 'review was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @review.update(rating_params)
      redirect_to games_index_path, notice: 'Rating was successfully created.'
    else
      render :edit
    end
  end

end

private
    # Use callbacks to share common setup or constraints between actions.
    def set_rating
      @review = Rating.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rating_params
      params.require(:rating).permit(:points, :review, :game_id, :user_id)
    end



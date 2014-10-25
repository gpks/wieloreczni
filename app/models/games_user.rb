class GamesUser < ActiveRecord::Base

  belongs_to :game
  belongs_to :user

  validates :game_id, uniqueness: { scope: :user_id,
    message: "You can have only one game of a kind" }


end

class Rating < ActiveRecord::Base
  belongs_to :user
  belongs_to :game

  validates :user_id, presence: true
  validates :game_id, presence: true
  validates :points, inclusion: { in: 1..10 }
  validates :game_id, uniqueness: { scope: :user_id,
    message: "You can have only one review of a game" }

  


end

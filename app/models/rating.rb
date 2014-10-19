class Rating < ActiveRecord::Base
  belongs_to :user
  belongs_to :game

  validates :user_id, presence: true
  validates :game_id, presence: true
  #validate :rate_cannot_be_changed, on: update

  # def rate_cannot_be_changed
  #   #dreo zrobienia
  # end



end

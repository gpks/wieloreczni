class Game < ActiveRecord::Base 

  has_many :games_users
  has_many :users, :through => :games_users
  has_many :ratings

  validates :name, presence: true
  validates :description, presence: true
  validates :minplayer, presence: true
  validates :minplayer, inclusion: { in: 1..10 }
  validates :maxplayer, presence: true
  validates :maxplayer, inclusion: { in: 1..100 }
  validates :minage, inclusion: { in: 0..18 }

  

end

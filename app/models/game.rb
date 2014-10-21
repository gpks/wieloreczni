class Game < ActiveRecord::Base 
  has_and_belongs_to_many :users
  has_many :ratings

  validates :name, presence: true
  validates :description, presence: true
  validates :minplayer, presence: true
  validates :minplayer, inclusion: { in: 1..10 }
  validates :maxplayer, presence: true
  validates :maxplayer, inclusion: { in: 1..100 }
  validates :minage, inclusion: { in: 0..18 }



end

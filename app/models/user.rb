 class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :games_users
  has_many :games, :through => :games_users

  has_many :ratings

   validates :name, presence: true
   validates :name, length: { minimum: 3 }
   validate :one_game_one_user
    

def username
  name? ? name : email
end

def one_game_one_user 
  puts self.games
  # if self.games.include? game
  #   puts "error"
  #   errors.add(:base, "You have this game")
  # else
  #   puts "przeszło"
  # end
end


  

end

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
    

def username
  name? ? name : email
end




  

end

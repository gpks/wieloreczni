 class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_and_belongs_to_many :games
  has_many :ratings

  # validates :name, presence: true
  # validates :name, length: { minimum: 3 }

  

end

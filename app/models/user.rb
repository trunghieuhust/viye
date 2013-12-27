class User < ActiveRecord::Base
	has_many :posts
	has_many :comments
	has_many :ratings
	has_many :journeys
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable
  validates :name, presence: true
  validates_length_of :name, :maximum => 25	
  validates_length_of :email, :maximum => 25
  validates_length_of :phone_number, :maximum => 25	
end

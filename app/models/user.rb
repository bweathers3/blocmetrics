class User < ActiveRecord::Base

  has_many :registered_applications, dependent: :destroy

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
         
end

class Admin < ActiveRecord::Base
  has_many :events
  attr_accessor :username
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


end

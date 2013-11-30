class Admin < ActiveRecord::Base
  attr_accessor :username
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


end

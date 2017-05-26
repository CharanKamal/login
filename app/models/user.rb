class User < ApplicationRecord
	validates :uname, :presence => true, :uniqueness => true, :length => { :in => 3..20 }
	validates :email, :presence => true, :uniqueness => true
	validates :password, :confirmation => true
	validates_length_of :password, :in => 6..20, :on => :create

	has_many :friendships
	has_many :friends, through: :friendships
end

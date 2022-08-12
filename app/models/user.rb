class User < ApplicationRecord
    has_secure_password
    validates :email, uniqueness: { case_sensitive: false }
    has_many :comments, :dependent => :destroy
    has_many :chefs, :through => :comments
    has_many :bookings, :dependent => :destroy
end

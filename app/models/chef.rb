class Chef < ApplicationRecord
    has_secure_password
    has_one_attached :image
    has_many :comments, :dependent => :destroy
    has_many :user, :through => :comments
    has_many :bookings, :dependent => :destroy
  
end

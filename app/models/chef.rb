class Chef < ApplicationRecord
    has_secure_password
    has_one_attached :image
    has_many :likes
    # has_one :admin

#    def image_url

#    end
end

class BookingSerializer 
  include FastJsonapi::ObjectSerializer
  attributes :id, :offered_, :price, :date, :user_name, :guest_count, :address, :status,:chef_id,:user_id
  # has_one :user
  # has_one :chef
end

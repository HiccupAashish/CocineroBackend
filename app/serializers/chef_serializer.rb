class ChefSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name,:id,:img1,:img2,:img3,:address,:email,:lat,:lng,:bio1,:bio2
end

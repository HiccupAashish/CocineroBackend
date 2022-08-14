class ChefSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name,:id,:address,:email,:lat,:lng,:bio1,:bio2,:images,:avatar
end

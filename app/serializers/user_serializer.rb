class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes  :username,:email,:likes
end

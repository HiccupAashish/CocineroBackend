class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes  :username,:email,:id,:bio,:avatar

end
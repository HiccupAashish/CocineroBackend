class AdminSerializer
  include JSONAPI::Serializer
  attributes :name,:email
end

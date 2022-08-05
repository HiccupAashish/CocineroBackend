class LikeSerializer < ActiveModel::Serializer
  include FastJsonapi::ObjectSerializer
  attributes :chef_id
end

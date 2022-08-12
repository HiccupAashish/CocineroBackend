class CommentSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id,:comment
  # has_one :user
  # has_one :chef
end

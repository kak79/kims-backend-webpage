class BlogSerializer < ActiveModel::Serializer
  attributes :id, :title, :summary
end

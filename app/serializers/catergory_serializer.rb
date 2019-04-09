class CategorySerializer < ActiveModel::Serializer
  belongs_to :department
  has_many :items
  attributes :id, :name
end

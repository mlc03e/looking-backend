class ItemSerializer < ActiveModel::Serializer
  belongs_to :category
  attributes :id, :name, :desciption, :price
end

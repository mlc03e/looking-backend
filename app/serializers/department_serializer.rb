class DepartmentSerializer < ActiveModel::Serializer
  has_many :categories
  has_many :items, through: :categories
  attributes :id, :name
end

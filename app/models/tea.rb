class Tea
  include Mongoid::Document
  field :name, type: String
  field :ingredients, type: String
  field :caffeineScale, type: Integer
  field :price, type: Integer
  field :inStock, type: Mongoid::Boolean
  field :rating, type: Integer
  field :imageUrl, type: String
  field :categories, type: Array
end

class Cart
  include Mongoid::Document
  field :user_id, type: String
  field :items, type: Array
end

class Item
  include Mongoid::Document
  field :item_id, type: String
  field :quantity, type: Integer

  embedded_in :cart
end

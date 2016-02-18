class Item
  include Mongoid::Document
  has_many :customizations
  belongs_to :menu_item


  field :name, type: String
  field :price, type: BigDecimal
  field :description, type: String
  field :menu_item_id, type: String
end

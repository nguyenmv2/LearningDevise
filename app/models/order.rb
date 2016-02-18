class Order
  include Mongoid::Document
  has_many :items
  field :total, type: BigDecimal
  field :item_id, type: String

end

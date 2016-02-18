class Modifier
  include Mongoid::Document
  has_many :customizations
  field :name, type: String
  field :deltaPrice, type: BigDecimal
  field :description, type: String
  field :item_id, type: Integer
end

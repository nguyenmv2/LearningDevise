class MenuItem
  include Mongoid::Document
  has_many :items, dependent: :destroy


  field :name, type: String
  field :price, type: BigDecimal
  field :description, type: String
end

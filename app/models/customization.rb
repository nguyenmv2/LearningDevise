class Customization
  include Mongoid::Document
  belongs_to :item
  belongs_to :modifier


  field :item_id, type: Integer

  field :modifier_id, type: Integer
end

json.array!(@orders) do |order|
  json.extract! order, :id, :total, :item_id, :integer
  json.url order_url(order, format: :json)
end

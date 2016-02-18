require 'rails_helper'

RSpec.describe "orders/show", type: :view do
  before(:each) do
    @order = assign(:order, Order.create!(
      :total => "",
      :item_id => "Item",
      :integer => "Integer"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Item/)
    expect(rendered).to match(/Integer/)
  end
end

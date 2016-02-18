require 'rails_helper'

RSpec.describe "orders/index", type: :view do
  before(:each) do
    assign(:orders, [
      Order.create!(
        :total => "",
        :item_id => "Item",
        :integer => "Integer"
      ),
      Order.create!(
        :total => "",
        :item_id => "Item",
        :integer => "Integer"
      )
    ])
  end

  it "renders a list of orders" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Item".to_s, :count => 2
    assert_select "tr>td", :text => "Integer".to_s, :count => 2
  end
end

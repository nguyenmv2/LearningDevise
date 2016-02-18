require 'rails_helper'

RSpec.describe "orders/edit", type: :view do
  before(:each) do
    @order = assign(:order, Order.create!(
      :total => "",
      :item_id => "MyString",
      :integer => "MyString"
    ))
  end

  it "renders the edit order form" do
    render

    assert_select "form[action=?][method=?]", order_path(@order), "post" do

      assert_select "input#order_total[name=?]", "order[total]"

      assert_select "input#order_item_id[name=?]", "order[item_id]"

      assert_select "input#order_integer[name=?]", "order[integer]"
    end
  end
end

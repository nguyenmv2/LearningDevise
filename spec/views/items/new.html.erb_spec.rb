require 'rails_helper'

RSpec.describe "items/new", type: :view do
  before(:each) do
    assign(:item, Item.new(
      :name => "MyString",
      :price => "",
      :description => "MyString",
      :modifier_id => 1
    ))
  end

  it "renders new item form" do
    render

    assert_select "form[action=?][method=?]", items_path, "post" do

      assert_select "input#item_name[name=?]", "item[name]"

      assert_select "input#item_price[name=?]", "item[price]"

      assert_select "input#item_description[name=?]", "item[description]"

      assert_select "input#item_modifier_id[name=?]", "item[modifier_id]"
    end
  end
end

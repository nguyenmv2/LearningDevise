require 'rails_helper'

RSpec.describe "items/edit", type: :view do
  before(:each) do
    @item = assign(:item, Item.create!(
      :name => "MyString",
      :price => "",
      :description => "MyString",
      :modifier_id => 1
    ))
  end

  it "renders the edit item form" do
    render

    assert_select "form[action=?][method=?]", item_path(@item), "post" do

      assert_select "input#item_name[name=?]", "item[name]"

      assert_select "input#item_price[name=?]", "item[price]"

      assert_select "input#item_description[name=?]", "item[description]"

      assert_select "input#item_modifier_id[name=?]", "item[modifier_id]"
    end
  end
end

require 'rails_helper'

RSpec.describe "menu_items/new", type: :view do
  before(:each) do
    assign(:menu_item, MenuItem.new(
      :name => "",
      :price => "",
      :description => "MyString"
    ))
  end

  it "renders new menu_item form" do
    render

    assert_select "form[action=?][method=?]", menu_items_path, "post" do

      assert_select "input#menu_item_name[name=?]", "menu_item[name]"

      assert_select "input#menu_item_price[name=?]", "menu_item[price]"

      assert_select "input#menu_item_description[name=?]", "menu_item[description]"
    end
  end
end

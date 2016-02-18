require 'rails_helper'

RSpec.describe "menu_items/edit", type: :view do
  before(:each) do
    @menu_item = assign(:menu_item, MenuItem.create!(
      :name => "",
      :price => "",
      :description => "MyString"
    ))
  end

  it "renders the edit menu_item form" do
    render

    assert_select "form[action=?][method=?]", menu_item_path(@menu_item), "post" do

      assert_select "input#menu_item_name[name=?]", "menu_item[name]"

      assert_select "input#menu_item_price[name=?]", "menu_item[price]"

      assert_select "input#menu_item_description[name=?]", "menu_item[description]"
    end
  end
end

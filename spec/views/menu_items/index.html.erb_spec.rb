require 'rails_helper'

RSpec.describe "menu_items/index", type: :view do
  before(:each) do
    assign(:menu_items, [
      MenuItem.create!(
        :name => "",
        :price => "",
        :description => "Description"
      ),
      MenuItem.create!(
        :name => "",
        :price => "",
        :description => "Description"
      )
    ])
  end

  it "renders a list of menu_items" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end

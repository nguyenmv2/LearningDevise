require 'rails_helper'

RSpec.describe "modifiers/index", type: :view do
  before(:each) do
    assign(:modifiers, [
      Modifier.create!(
        :name => "Name",
        :deltaPrice => "",
        :description => "Description"
      ),
      Modifier.create!(
        :name => "Name",
        :deltaPrice => "",
        :description => "Description"
      )
    ])
  end

  it "renders a list of modifiers" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end

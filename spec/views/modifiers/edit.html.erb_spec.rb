require 'rails_helper'

RSpec.describe "modifiers/edit", type: :view do
  before(:each) do
    @modifier = assign(:modifier, Modifier.create!(
      :name => "MyString",
      :deltaPrice => "",
      :description => "MyString"
    ))
  end

  it "renders the edit modifier form" do
    render

    assert_select "form[action=?][method=?]", modifier_path(@modifier), "post" do

      assert_select "input#modifier_name[name=?]", "modifier[name]"

      assert_select "input#modifier_deltaPrice[name=?]", "modifier[deltaPrice]"

      assert_select "input#modifier_description[name=?]", "modifier[description]"
    end
  end
end

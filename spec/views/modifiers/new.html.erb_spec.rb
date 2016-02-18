require 'rails_helper'

RSpec.describe "modifiers/new", type: :view do
  before(:each) do
    assign(:modifier, Modifier.new(
      :name => "MyString",
      :deltaPrice => "",
      :description => "MyString"
    ))
  end

  it "renders new modifier form" do
    render

    assert_select "form[action=?][method=?]", modifiers_path, "post" do

      assert_select "input#modifier_name[name=?]", "modifier[name]"

      assert_select "input#modifier_deltaPrice[name=?]", "modifier[deltaPrice]"

      assert_select "input#modifier_description[name=?]", "modifier[description]"
    end
  end
end

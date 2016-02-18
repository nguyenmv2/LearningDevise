require 'rails_helper'

RSpec.describe "customizations/new", type: :view do
  before(:each) do
    assign(:customization, Customization.new(
      :modifier_id => 1
    ))
  end

  it "renders new customization form" do
    render

    assert_select "form[action=?][method=?]", customizations_path, "post" do

      assert_select "input#customization_modifier_id[name=?]", "customization[modifier_id]"
    end
  end
end

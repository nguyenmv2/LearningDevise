require 'rails_helper'

RSpec.describe "customizations/edit", type: :view do
  before(:each) do
    @customization = assign(:customization, Customization.create!(
      :modifier_id => 1
    ))
  end

  it "renders the edit customization form" do
    render

    assert_select "form[action=?][method=?]", customization_path(@customization), "post" do

      assert_select "input#customization_modifier_id[name=?]", "customization[modifier_id]"
    end
  end
end

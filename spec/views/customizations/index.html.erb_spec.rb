require 'rails_helper'

RSpec.describe "customizations/index", type: :view do
  before(:each) do
    assign(:customizations, [
      Customization.create!(
        :modifier_id => 1
      ),
      Customization.create!(
        :modifier_id => 1
      )
    ])
  end

  it "renders a list of customizations" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end

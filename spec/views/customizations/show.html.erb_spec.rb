require 'rails_helper'

RSpec.describe "customizations/show", type: :view do
  before(:each) do
    @customization = assign(:customization, Customization.create!(
      :modifier_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
  end
end

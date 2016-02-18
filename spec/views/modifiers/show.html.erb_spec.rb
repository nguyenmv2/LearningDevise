require 'rails_helper'

RSpec.describe "modifiers/show", type: :view do
  before(:each) do
    @modifier = assign(:modifier, Modifier.create!(
      :name => "Name",
      :deltaPrice => "",
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Description/)
  end
end

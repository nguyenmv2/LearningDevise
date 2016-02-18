require 'rails_helper'

RSpec.describe "Customizations", type: :request do
  describe "GET /customizations" do
    it "works! (now write some real specs)" do
      get customizations_path
      expect(response).to have_http_status(200)
    end
  end
end

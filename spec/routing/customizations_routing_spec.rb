require "rails_helper"

RSpec.describe CustomizationsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/customizations").to route_to("customizations#index")
    end

    it "routes to #new" do
      expect(:get => "/customizations/new").to route_to("customizations#new")
    end

    it "routes to #show" do
      expect(:get => "/customizations/1").to route_to("customizations#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/customizations/1/edit").to route_to("customizations#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/customizations").to route_to("customizations#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/customizations/1").to route_to("customizations#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/customizations/1").to route_to("customizations#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/customizations/1").to route_to("customizations#destroy", :id => "1")
    end

  end
end

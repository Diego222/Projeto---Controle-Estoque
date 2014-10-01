require "rails_helper"

RSpec.describe TransportadorasController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/transportadoras").to route_to("transportadoras#index")
    end

    it "routes to #new" do
      expect(:get => "/transportadoras/new").to route_to("transportadoras#new")
    end

    it "routes to #show" do
      expect(:get => "/transportadoras/1").to route_to("transportadoras#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/transportadoras/1/edit").to route_to("transportadoras#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/transportadoras").to route_to("transportadoras#create")
    end

    it "routes to #update" do
      expect(:put => "/transportadoras/1").to route_to("transportadoras#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/transportadoras/1").to route_to("transportadoras#destroy", :id => "1")
    end

  end
end

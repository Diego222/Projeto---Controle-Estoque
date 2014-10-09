require 'rails_helper'

RSpec.describe "Pedidos", :type => :request do
  describe "GET /pedidos" do
    it "works! (now write some real specs)" do
      get pedidos_path
      expect(response.status).to be(200)
    end
  end
end

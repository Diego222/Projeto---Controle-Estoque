require 'rails_helper'

RSpec.describe "Transportadoras", :type => :request do
  describe "GET /transportadoras" do
    it "works! (now write some real specs)" do
      get transportadoras_path
      expect(response.status).to be(200)
    end
  end
end

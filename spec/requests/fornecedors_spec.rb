require 'rails_helper'

RSpec.describe "Fornecedors", :type => :request do
  describe "GET /fornecedors" do
    it "works! (now write some real specs)" do
      get fornecedors_path
      expect(response.status).to be(200)
    end
  end
end
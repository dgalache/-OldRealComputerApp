require 'rails_helper'

RSpec.describe "Tecnicos", type: :request do
  describe "GET /tecnicos" do
    it "works! (now write some real specs)" do
      get tecnicos_path
      expect(response).to have_http_status(200)
    end
  end
end

require 'rails_helper'

RSpec.describe "Modelos", :type => :request do
  describe "GET /modelos" do
    it "works! (now write some real specs)" do
      get modelos_path
      expect(response).to have_http_status(200)
    end
  end
end

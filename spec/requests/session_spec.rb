require 'rails_helper'

RSpec.describe "Sessions", type: :request do
  describe "GET /signup" do
    it "returns http success" do
      get "/session/signup"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /login" do
    it "returns http success" do
      get "/session/login"
      expect(response).to have_http_status(:success)
    end
  end

end

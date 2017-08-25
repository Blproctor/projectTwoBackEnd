require 'rails_helper'

RSpec.describe "MedicalPosts", type: :request do
  describe "GET /medical_posts" do
    it "works! (now write some real specs)" do
      get medical_posts_path
      expect(response).to have_http_status(200)
    end
  end
end

require "rails_helper"

RSpec.describe MedicalPostsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/medical_posts").to route_to("medical_posts#index")
    end

    it "routes to #new" do
      expect(:get => "/medical_posts/new").to route_to("medical_posts#new")
    end

    it "routes to #show" do
      expect(:get => "/medical_posts/1").to route_to("medical_posts#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/medical_posts/1/edit").to route_to("medical_posts#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/medical_posts").to route_to("medical_posts#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/medical_posts/1").to route_to("medical_posts#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/medical_posts/1").to route_to("medical_posts#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/medical_posts/1").to route_to("medical_posts#destroy", :id => "1")
    end

  end
end

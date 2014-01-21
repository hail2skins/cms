require "spec_helper"

describe GiftCertsController do
  describe "routing" do

    it "routes to #index" do
      get("/gift_certs").should route_to("gift_certs#index")
    end

    it "routes to #new" do
      get("/gift_certs/new").should route_to("gift_certs#new")
    end

    it "routes to #show" do
      get("/gift_certs/1").should route_to("gift_certs#show", :id => "1")
    end

    it "routes to #edit" do
      get("/gift_certs/1/edit").should route_to("gift_certs#edit", :id => "1")
    end

    it "routes to #create" do
      post("/gift_certs").should route_to("gift_certs#create")
    end

    it "routes to #update" do
      put("/gift_certs/1").should route_to("gift_certs#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/gift_certs/1").should route_to("gift_certs#destroy", :id => "1")
    end

  end
end

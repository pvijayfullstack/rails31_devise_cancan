require "spec_helper"

describe ResultTypesController do
  describe "routing" do

    it "routes to #index" do
      get("/result_types").should route_to("result_types#index")
    end

    it "routes to #new" do
      get("/result_types/new").should route_to("result_types#new")
    end

    it "routes to #show" do
      get("/result_types/1").should route_to("result_types#show", :id => "1")
    end

    it "routes to #edit" do
      get("/result_types/1/edit").should route_to("result_types#edit", :id => "1")
    end

    it "routes to #create" do
      post("/result_types").should route_to("result_types#create")
    end

    it "routes to #update" do
      put("/result_types/1").should route_to("result_types#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/result_types/1").should route_to("result_types#destroy", :id => "1")
    end

  end
end

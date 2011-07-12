require "spec_helper"

describe ImportClientsController do
  describe "routing" do

    it "routes to #index" do
      get("/import_clients").should route_to("import_clients#index")
    end

    it "routes to #new" do
      get("/import_clients/new").should route_to("import_clients#new")
    end

    it "routes to #show" do
      get("/import_clients/1").should route_to("import_clients#show", :id => "1")
    end

    it "routes to #edit" do
      get("/import_clients/1/edit").should route_to("import_clients#edit", :id => "1")
    end

    it "routes to #create" do
      post("/import_clients").should route_to("import_clients#create")
    end

    it "routes to #update" do
      put("/import_clients/1").should route_to("import_clients#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/import_clients/1").should route_to("import_clients#destroy", :id => "1")
    end

  end
end

require 'spec_helper'

describe "import_clients/index.html.haml" do
  before(:each) do
    assign(:import_clients, [
      stub_model(ImportClient,
        :company_id => 1,
        :client_no => 1,
        :active => false,
        :sort_key => "Sort Key",
        :name => "Name",
        :adress => "Adress",
        :city => "City",
        :postal_code => "Postal Code",
        :phone => "Phone",
        :new => false
      ),
      stub_model(ImportClient,
        :company_id => 1,
        :client_no => 1,
        :active => false,
        :sort_key => "Sort Key",
        :name => "Name",
        :adress => "Adress",
        :city => "City",
        :postal_code => "Postal Code",
        :phone => "Phone",
        :new => false
      )
    ])
  end

  it "renders a list of import_clients" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Sort Key".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Adress".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "City".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Postal Code".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end

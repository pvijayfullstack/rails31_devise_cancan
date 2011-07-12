require 'spec_helper'

describe "clients/index.html.haml" do
  before(:each) do
    assign(:clients, [
      stub_model(Client,
        :active => false,
        :name => "Name",
        :address => "Address",
        :city => "City",
        :postal_code => "Postal Code",
        :phone => "Phone",
        :banner_id => 1
      ),
      stub_model(Client,
        :active => false,
        :name => "Name",
        :address => "Address",
        :city => "City",
        :postal_code => "Postal Code",
        :phone => "Phone",
        :banner_id => 1
      )
    ])
  end

  it "renders a list of clients" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "City".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Postal Code".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end

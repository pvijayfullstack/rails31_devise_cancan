require 'spec_helper'

describe "clients/edit.html.haml" do
  before(:each) do
    @client = assign(:client, stub_model(Client,
      :active => false,
      :name => "MyString",
      :address => "MyString",
      :city => "MyString",
      :postal_code => "MyString",
      :phone => "MyString",
      :banner_id => 1
    ))
  end

  it "renders the edit client form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => clients_path(@client), :method => "post" do
      assert_select "input#client_active", :name => "client[active]"
      assert_select "input#client_name", :name => "client[name]"
      assert_select "input#client_address", :name => "client[address]"
      assert_select "input#client_city", :name => "client[city]"
      assert_select "input#client_postal_code", :name => "client[postal_code]"
      assert_select "input#client_phone", :name => "client[phone]"
      assert_select "input#client_banner_id", :name => "client[banner_id]"
    end
  end
end

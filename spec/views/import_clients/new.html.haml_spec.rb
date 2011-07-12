require 'spec_helper'

describe "import_clients/new.html.haml" do
  before(:each) do
    assign(:import_client, stub_model(ImportClient,
      :company_id => 1,
      :client_no => 1,
      :active => false,
      :sort_key => "MyString",
      :name => "MyString",
      :adress => "MyString",
      :city => "MyString",
      :postal_code => "MyString",
      :phone => "MyString",
      :new => false
    ).as_new_record)
  end

  it "renders new import_client form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => import_clients_path, :method => "post" do
      assert_select "input#import_client_company_id", :name => "import_client[company_id]"
      assert_select "input#import_client_client_no", :name => "import_client[client_no]"
      assert_select "input#import_client_active", :name => "import_client[active]"
      assert_select "input#import_client_sort_key", :name => "import_client[sort_key]"
      assert_select "input#import_client_name", :name => "import_client[name]"
      assert_select "input#import_client_adress", :name => "import_client[adress]"
      assert_select "input#import_client_city", :name => "import_client[city]"
      assert_select "input#import_client_postal_code", :name => "import_client[postal_code]"
      assert_select "input#import_client_phone", :name => "import_client[phone]"
      assert_select "input#import_client_new", :name => "import_client[new]"
    end
  end
end

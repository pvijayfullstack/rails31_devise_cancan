require 'spec_helper'

describe "banners/new.html.haml" do
  before(:each) do
    assign(:banner, stub_model(Banner,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new banner form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => banners_path, :method => "post" do
      assert_select "input#banner_name", :name => "banner[name]"
    end
  end
end

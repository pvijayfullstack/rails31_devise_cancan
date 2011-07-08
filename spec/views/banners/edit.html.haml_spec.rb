require 'spec_helper'

describe "banners/edit.html.haml" do
  before(:each) do
    @banner = assign(:banner, stub_model(Banner,
      :name => "MyString"
    ))
  end

  it "renders the edit banner form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => banners_path(@banner), :method => "post" do
      assert_select "input#banner_name", :name => "banner[name]"
    end
  end
end

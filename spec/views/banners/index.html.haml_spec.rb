require 'spec_helper'

describe "banners/index.html.haml" do
  before(:each) do
    assign(:banners, [
      stub_model(Banner,
        :name => "Name"
      ),
      stub_model(Banner,
        :name => "Name"
      )
    ])
  end

  it "renders a list of banners" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end

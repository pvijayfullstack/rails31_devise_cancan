require 'spec_helper'

describe "banners/show.html.haml" do
  before(:each) do
    @banner = assign(:banner, stub_model(Banner,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end

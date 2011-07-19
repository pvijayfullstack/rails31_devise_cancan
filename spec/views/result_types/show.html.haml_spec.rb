require 'spec_helper'

describe "result_types/show.html.haml" do
  before(:each) do
    @result_type = assign(:result_type, stub_model(ResultType,
      :name => "Name",
      :active => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
  end
end

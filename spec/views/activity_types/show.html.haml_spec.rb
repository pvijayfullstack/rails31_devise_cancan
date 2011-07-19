require 'spec_helper'

describe "activity_types/show.html.haml" do
  before(:each) do
    @activity_type = assign(:activity_type, stub_model(ActivityType,
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

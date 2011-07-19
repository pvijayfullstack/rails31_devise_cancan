require 'spec_helper'

describe "activities/show.html.haml" do
  before(:each) do
    @activity = assign(:activity, stub_model(Activity,
      :note => "Note"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Note/)
  end
end

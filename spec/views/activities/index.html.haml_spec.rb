require 'spec_helper'

describe "activities/index.html.haml" do
  before(:each) do
    assign(:activities, [
      stub_model(Activity,
        :note => "Note"
      ),
      stub_model(Activity,
        :note => "Note"
      )
    ])
  end

  it "renders a list of activities" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Note".to_s, :count => 2
  end
end

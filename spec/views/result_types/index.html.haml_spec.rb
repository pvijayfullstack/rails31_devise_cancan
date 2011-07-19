require 'spec_helper'

describe "result_types/index.html.haml" do
  before(:each) do
    assign(:result_types, [
      stub_model(ResultType,
        :name => "Name",
        :active => false
      ),
      stub_model(ResultType,
        :name => "Name",
        :active => false
      )
    ])
  end

  it "renders a list of result_types" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end

require 'spec_helper'

describe "activities/edit.html.haml" do
  before(:each) do
    @activity = assign(:activity, stub_model(Activity,
      :note => "MyString"
    ))
  end

  it "renders the edit activity form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => activities_path(@activity), :method => "post" do
      assert_select "input#activity_note", :name => "activity[note]"
    end
  end
end

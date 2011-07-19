require 'spec_helper'

describe "activities/new.html.haml" do
  before(:each) do
    assign(:activity, stub_model(Activity,
      :note => "MyString"
    ).as_new_record)
  end

  it "renders new activity form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => activities_path, :method => "post" do
      assert_select "input#activity_note", :name => "activity[note]"
    end
  end
end

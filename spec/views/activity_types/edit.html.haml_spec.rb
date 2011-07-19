require 'spec_helper'

describe "activity_types/edit.html.haml" do
  before(:each) do
    @activity_type = assign(:activity_type, stub_model(ActivityType,
      :name => "MyString",
      :active => false
    ))
  end

  it "renders the edit activity_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => activity_types_path(@activity_type), :method => "post" do
      assert_select "input#activity_type_name", :name => "activity_type[name]"
      assert_select "input#activity_type_active", :name => "activity_type[active]"
    end
  end
end

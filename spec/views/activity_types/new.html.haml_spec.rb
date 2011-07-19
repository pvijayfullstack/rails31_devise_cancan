require 'spec_helper'

describe "activity_types/new.html.haml" do
  before(:each) do
    assign(:activity_type, stub_model(ActivityType,
      :name => "MyString",
      :active => false
    ).as_new_record)
  end

  it "renders new activity_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => activity_types_path, :method => "post" do
      assert_select "input#activity_type_name", :name => "activity_type[name]"
      assert_select "input#activity_type_active", :name => "activity_type[active]"
    end
  end
end

require 'spec_helper'

describe "result_types/edit.html.haml" do
  before(:each) do
    @result_type = assign(:result_type, stub_model(ResultType,
      :name => "MyString",
      :active => false
    ))
  end

  it "renders the edit result_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => result_types_path(@result_type), :method => "post" do
      assert_select "input#result_type_name", :name => "result_type[name]"
      assert_select "input#result_type_active", :name => "result_type[active]"
    end
  end
end

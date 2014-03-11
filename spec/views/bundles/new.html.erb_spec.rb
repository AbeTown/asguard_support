require 'spec_helper'

describe "bundles/new" do
  before(:each) do
    assign(:bundle, stub_model(Bundle,
      :uid => 1,
      :description => "MyText",
      :errors => "MyText",
      :environment => "MyString",
      :firmware_revision => "MyString"
    ).as_new_record)
  end

  it "renders new bundle form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", bundles_path, "post" do
      assert_select "input#bundle_uid[name=?]", "bundle[uid]"
      assert_select "textarea#bundle_description[name=?]", "bundle[description]"
      assert_select "textarea#bundle_errors[name=?]", "bundle[errors]"
      assert_select "input#bundle_environment[name=?]", "bundle[environment]"
      assert_select "input#bundle_firmware_revision[name=?]", "bundle[firmware_revision]"
    end
  end
end

require 'spec_helper'

describe "bundles/show" do
  before(:each) do
    @bundle = assign(:bundle, stub_model(Bundle,
      :uid => 1,
      :description => "MyText",
      :errors => "MyText",
      :environment => "Environment",
      :firmware_revision => "Firmware Revision"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
    rendered.should match(/Environment/)
    rendered.should match(/Firmware Revision/)
  end
end

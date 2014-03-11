require 'spec_helper'

describe "bundles/index" do
  before(:each) do
    assign(:bundles, [
      stub_model(Bundle,
        :uid => 1,
        :description => "MyText",
        :errors => "MyText",
        :environment => "Environment",
        :firmware_revision => "Firmware Revision"
      ),
      stub_model(Bundle,
        :uid => 1,
        :description => "MyText",
        :errors => "MyText",
        :environment => "Environment",
        :firmware_revision => "Firmware Revision"
      )
    ])
  end

  it "renders a list of bundles" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Environment".to_s, :count => 2
    assert_select "tr>td", :text => "Firmware Revision".to_s, :count => 2
  end
end

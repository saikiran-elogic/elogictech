require 'spec_helper'

describe "partners/index" do
  before(:each) do
    assign(:partners, [
      stub_model(Partner,
        :partner_name => "Partner Name",
        :website => "Website"
      ),
      stub_model(Partner,
        :partner_name => "Partner Name",
        :website => "Website"
      )
    ])
  end

  it "renders a list of partners" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Partner Name".to_s, :count => 2
    assert_select "tr>td", :text => "Website".to_s, :count => 2
  end
end

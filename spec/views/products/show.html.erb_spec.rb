require 'spec_helper'

describe "products/show" do
  before(:each) do
    @product = assign(:product, stub_model(Product,
      :name => "Name",
      :domain => "Domain",
      :description => "MyText",
      :features => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Domain/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
  end
end

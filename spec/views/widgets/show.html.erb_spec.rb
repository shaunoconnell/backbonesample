require 'spec_helper'

describe "widgets/show" do
  before(:each) do
    @widget = assign(:widget, stub_model(Widget,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end

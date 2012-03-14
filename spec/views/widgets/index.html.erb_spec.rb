require 'spec_helper'

describe "widgets/index" do
  before(:each) do
    assign(:widgets, [
      stub_model(Widget,
        :name => "Name"
      ),
      stub_model(Widget,
        :name => "Name"
      )
    ])
  end

  it "renders a list of widgets" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end

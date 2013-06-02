require 'spec_helper'

describe "galleries/index" do
  before(:each) do
    assign(:galleries, [
      stub_model(Gallery,
        :title => "Title",
        :kind => "Kind",
        :image => "Image"
      ),
      stub_model(Gallery,
        :title => "Title",
        :kind => "Kind",
        :image => "Image"
      )
    ])
  end

  it "renders a list of galleries" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Kind".to_s, :count => 2
    assert_select "tr>td", :text => "Image".to_s, :count => 2
  end
end

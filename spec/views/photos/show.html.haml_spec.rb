require 'spec_helper'

describe "photos/show" do
  before(:each) do
    @photo = assign(:photo, stub_model(Photo,
      :photo_file => "Photo File",
      :gallery_id => 1,
      :position => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Photo File/)
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end

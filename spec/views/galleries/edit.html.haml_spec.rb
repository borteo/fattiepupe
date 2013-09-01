require 'spec_helper'

describe "galleries/edit" do
  before(:each) do
    @gallery = assign(:gallery, stub_model(Gallery,
      :title => "MyString",
      :kind => "MyString",
      :image => "MyString"
    ))
  end

  it "renders the edit gallery form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", gallery_path(@gallery), "post" do
      assert_select "input#gallery_title[name=?]", "gallery[title]"
      assert_select "input#gallery_kind[name=?]", "gallery[kind]"
      assert_select "input#gallery_image[name=?]", "gallery[image]"
    end
  end
end

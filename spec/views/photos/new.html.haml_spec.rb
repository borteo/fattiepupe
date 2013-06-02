require 'spec_helper'

describe "photos/new" do
  before(:each) do
    assign(:photo, stub_model(Photo,
      :photo_file => "MyString",
      :gallery_id => 1,
      :position => 1
    ).as_new_record)
  end

  it "renders new photo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", photos_path, "post" do
      assert_select "input#photo_photo_file[name=?]", "photo[photo_file]"
      assert_select "input#photo_gallery_id[name=?]", "photo[gallery_id]"
      assert_select "input#photo_position[name=?]", "photo[position]"
    end
  end
end

require 'spec_helper'

describe "photos/new" do
  before(:each) do
    assign(:photo, stub_model(Photo,
      :person_id => 1,
      :photo => "MyString"
    ).as_new_record)
  end

  it "renders new photo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", photos_path, "post" do
      assert_select "input#photo_person_id[name=?]", "photo[person_id]"
      assert_select "input#photo_photo[name=?]", "photo[photo]"
    end
  end
end

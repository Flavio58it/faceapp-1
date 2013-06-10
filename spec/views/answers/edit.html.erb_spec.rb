require 'spec_helper'

describe "answers/edit" do
  before(:each) do
    @answer = assign(:answer, stub_model(Answer,
      :rating => 1,
      :photo_id => 1,
      :question_id => 1
    ))
  end

  it "renders the edit answer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", answer_path(@answer), "post" do
      assert_select "input#answer_rating[name=?]", "answer[rating]"
      assert_select "input#answer_photo_id[name=?]", "answer[photo_id]"
      assert_select "input#answer_question_id[name=?]", "answer[question_id]"
    end
  end
end

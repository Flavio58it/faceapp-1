require 'spec_helper'

describe "answers/new" do
  before(:each) do
    assign(:answer, stub_model(Answer,
      :rating => 1,
      :photo_id => 1,
      :question_id => 1
    ).as_new_record)
  end

  it "renders new answer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", answers_path, "post" do
      assert_select "input#answer_rating[name=?]", "answer[rating]"
      assert_select "input#answer_photo_id[name=?]", "answer[photo_id]"
      assert_select "input#answer_question_id[name=?]", "answer[question_id]"
    end
  end
end

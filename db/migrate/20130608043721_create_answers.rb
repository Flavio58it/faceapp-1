class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.integer :rating
      t.integer :photo_id
      t.integer :question_id

      t.timestamps
    end
  end
end

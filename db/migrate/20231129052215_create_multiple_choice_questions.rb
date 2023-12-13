class CreateMultipleChoiceQuestions < ActiveRecord::Migration[7.1]
  def change
    create_table :multiple_choice_questions do |t|
      t.text :prompt, null: false
      t.references :subject, null: false, foreign_key: true

      t.timestamps
    end
  end
end

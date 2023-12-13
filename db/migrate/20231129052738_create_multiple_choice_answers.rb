class CreateMultipleChoiceAnswers < ActiveRecord::Migration[7.1]
  def change
    create_table :multiple_choice_answers do |t|
      t.text :answer, null: false
      t.text :explanation, null: true
      t.boolean :correct, null: false
      t.references :multiple_choice_question, null: false, foreign_key: true

      t.timestamps
    end
  end
end

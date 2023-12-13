class CreateSingleChoiceQuestions < ActiveRecord::Migration[7.1]
  def change
    create_table :single_choice_questions do |t|
      t.text :prompt, null: false
      t.text :answer, null: false
      t.references :subject, null: false, foreign_key: true

      t.timestamps
    end
  end
end

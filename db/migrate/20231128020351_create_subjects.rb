class CreateSubjects < ActiveRecord::Migration[7.1]
  def change
    create_table :subjects do |t|
      t.text :name, null: false
      t.references :creator, null: false, foreign_key: {to_table: :users}
      t.text :description, null: false

      t.timestamps
    end
  end
end

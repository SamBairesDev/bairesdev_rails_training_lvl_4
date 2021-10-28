class CreatePeople < ActiveRecord::Migration[6.1]
  def change
    create_table :people do |t|
      t.string :name, null: false
      t.boolean :tag_a
      t.boolean :tag_b
      t.boolean :tag_c
      t.string :country
      t.references :project, null: false, foreign_key: true
      t.references :role, null: false, foreign_key: true

      t.timestamps
    end
  end
end

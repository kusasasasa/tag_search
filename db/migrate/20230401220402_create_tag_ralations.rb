class CreateTagRalations < ActiveRecord::Migration[7.0]
  def change
    create_table :tag_ralations do |t|
      t.references :name, null: false, foreign_key: true
      t.references :tag, null: false, foreign_key: true

      t.timestamps
    end
  end
end

class CreateSaves < ActiveRecord::Migration[5.2]
  def change
    create_table :savings do |t|
      t.text :content
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

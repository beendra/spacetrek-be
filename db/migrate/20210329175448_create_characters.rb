class CreateCharacters < ActiveRecord::Migration[6.1]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :image
      t.integer :starbux
      t.integer :marsbar
      t.integer :lives
      t.integer :current_state
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

class CreatePlaces < ActiveRecord::Migration[6.1]
  def change
    create_table :places do |t|
      t.string :name
      t.string :description
      t.string :background

      t.timestamps
    end
  end
end

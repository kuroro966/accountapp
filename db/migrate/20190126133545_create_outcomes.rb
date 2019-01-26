class CreateOutcomes < ActiveRecord::Migration[5.2]
  def change
    create_table :outcomes do |t|
      t.date :date
      t.text :place
      t.text :marchandise
      t.integer :price
      t.integer :category_id
      t.timestamps
    end
  end
end

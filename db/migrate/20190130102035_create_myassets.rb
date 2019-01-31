class CreateMyassets < ActiveRecord::Migration[5.2]
  def change
    create_table :myassets do |t|
      t.date :date
      t.integer :asset1
      t.integer :asset2
      t.integer :asset3
      t.integer :asset4
      t.integer :asset5
      t.integer :asset6
      t.integer :asset7
      t.timestamps
    end
  end
end

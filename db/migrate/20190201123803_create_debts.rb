class CreateDebts < ActiveRecord::Migration[5.2]
  def change
    create_table :debts do |t|

      t.date :date
      t.integer :debt1
      t.integer :debt2
      t.integer :debt3
      t.integer :debt4
      t.integer :debt5
      t.integer :sum
      t.timestamps
    end
  end
end

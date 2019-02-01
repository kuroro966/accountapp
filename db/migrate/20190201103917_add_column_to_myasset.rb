class AddColumnToMyasset < ActiveRecord::Migration[5.2]
  def change
    add_column :myassets, :sum, :integer
  end
end

class AddNameToSavings < ActiveRecord::Migration[5.2]
  def change
    add_column :savings, :name, :string
  end
end

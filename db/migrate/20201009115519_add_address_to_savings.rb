class AddAddressToSavings < ActiveRecord::Migration[5.2]
  def change
    add_column :savings, :address, :string
  end
end

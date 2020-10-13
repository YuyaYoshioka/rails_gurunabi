class AddAddressToAssessments < ActiveRecord::Migration[5.2]
  def change
    add_column :assessments, :address, :string
  end
end

class AddNameToAssessments < ActiveRecord::Migration[5.2]
  def change
    add_column :assessments, :name, :string
  end
end

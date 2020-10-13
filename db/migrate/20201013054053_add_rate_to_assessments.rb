class AddRateToAssessments < ActiveRecord::Migration[5.2]
  def change
    add_column :assessments, :rate, :float
  end
end

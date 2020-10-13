class RemoveRateFromAssessments < ActiveRecord::Migration[5.2]
  def change
    remove_column :assessments, :rate, :float
  end
end

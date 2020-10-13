class AddStarToAssessments < ActiveRecord::Migration[5.2]
  def change
    add_column :assessments, :star, :float
  end
end

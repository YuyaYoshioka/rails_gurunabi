class RemoveStarFromAssessments < ActiveRecord::Migration[5.2]
  def change
    remove_column :assessments, :star, :float
  end
end

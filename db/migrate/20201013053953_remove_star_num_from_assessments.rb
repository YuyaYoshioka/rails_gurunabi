class RemoveStarNumFromAssessments < ActiveRecord::Migration[5.2]
  def change
    remove_column :assessments, :star_num, :float
  end
end

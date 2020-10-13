class AddStarNumToAssessment < ActiveRecord::Migration[5.2]
  def change
    add_column :assessments, :star_num, :float, null: false, default: 0
  end
end

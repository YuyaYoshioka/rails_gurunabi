class AddContentToAssessments < ActiveRecord::Migration[5.2]
  def change
    add_column :assessments, :content, :text
  end
end

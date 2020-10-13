class AddRestaurantToAssessments < ActiveRecord::Migration[5.2]
  def change
    add_column :assessments, :restaurant, :text
  end
end

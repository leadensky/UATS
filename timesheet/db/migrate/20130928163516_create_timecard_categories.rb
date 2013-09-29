class CreateTimecardCategories < ActiveRecord::Migration
  def change
    create_table :timecard_categories do |t|
      t.string :name, :description
      t.timestamps
    end
  end
end

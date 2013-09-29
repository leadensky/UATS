class AddTimecardCategoryToTimecard < ActiveRecord::Migration
  def self.up
    add_column :time_card_entries, :category_id, :integer
  end
end

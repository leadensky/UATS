class CreateTimeCardEntries < ActiveRecord::Migration
  def change
    create_table :time_card_entries do |t|
      t.belongs_to :timecard
      t.belongs_to :project
      t.decimal :mon
      t.decimal :tue
      t.decimal :wed
      t.decimal :thu
      t.decimal :fri
      t.decimal :sat
      t.decimal :sun
      t.string :comments

      t.timestamps
    end
  end
end

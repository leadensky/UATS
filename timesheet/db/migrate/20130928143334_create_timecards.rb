class CreateTimecards < ActiveRecord::Migration
  def change
    create_table :timecards do |t|
      t.belongs_to :employee
      t.datetime :weekDate
      t.timestamps
    end
  end
end

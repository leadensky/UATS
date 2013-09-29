class AddFieldsToEmployee < ActiveRecord::Migration
  def self.up
    add_column :employees, :lastName, :string
    add_column :employees, :firstName, :string
  end

  def self.down
    drop_column :employees, :lastName
    drop_column :employees, :firstName
  end
end

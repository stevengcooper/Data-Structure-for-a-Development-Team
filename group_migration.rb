require 'active_record'

class GroupMigration < ActiveRecord::Migration
  def change
    create_table :group do |t|
      t.string :name
      t.integer :project_id
      t.timestamps null: false
    end
  end
end

GroupMigration.migrate(:up)

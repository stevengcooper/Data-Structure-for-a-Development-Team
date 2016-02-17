require 'active_record'

class TasksMigration < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.integer :project_id
      t.integer :parent_task_id
      t.timestamps null: false
    end
  end
end

TasksMigration.migrate(:up)

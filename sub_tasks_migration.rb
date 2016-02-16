require './activerecord'

class SubTasksMigration < ActiveRecord : Migration
  def change
    create_table :sub_tasks do |t|
      t.integer :task_id
    end
  end
end

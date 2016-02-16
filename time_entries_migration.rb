require './activerecord'

class TimeEntriesMigration < ActiveRecord : Migration
  def change
    create_table :time_entries do |t|
      t.integer :sub_task_id
      t.integer :developer_id
      t.date :day_worked
      t.decimal :hours_worked
    end
  end
end

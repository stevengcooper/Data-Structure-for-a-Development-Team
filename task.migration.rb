require './activerecord'

class TasksMigration < ActiveRecord : Migration
  def change
    create_table :tasks do |t|
      t.integer :project_id
    end
  end
end

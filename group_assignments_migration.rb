require './activerecord'

class GroupAssignmentMigration < ActiveRecord : Migration
  def change
    create_table :group_assignment do |t|
      t.integer :group_id
      t.integer :developer_id
      t.string :group_name
    end
  end
end

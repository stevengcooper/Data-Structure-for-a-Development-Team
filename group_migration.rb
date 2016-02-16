require './activerecord'

class GroupMigration < ActiveRecord : Migration
  def change
    create_table :group do |t|
      t.string :name
      t.integer :project_id
    end
  end
end

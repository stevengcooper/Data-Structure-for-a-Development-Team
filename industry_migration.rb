require 'active_record'

class IndustriesMigration < ActiveRecord::Migration
  def change
    create_table :industries do |t|
      t.integer :client_id
      t.string :name
      t.timestamps null: false
    end
  end
end

IndustriesMigration.migrate(:up)

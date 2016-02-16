require './activerecord'

class IndustriesMigration < ActiveRecord : Migration
  def change
    create_table :industries do |t|
      t.integer :client_id
      t.string :name
    end
  end
end

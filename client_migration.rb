require 'active_record'

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: 'db.sqlite3'
)

class ClientsMigration < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.integer :industry_id
      t.string :name
      t.integer :user_id
      t.timestamps
    end
  end
end

ClientsMigration.migrate(:up)

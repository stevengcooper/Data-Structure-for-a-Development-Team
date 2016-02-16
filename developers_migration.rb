require './active_record'

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3'
  database: 'db.sqlite3'
)

class DevelopersMigration < ActiveRecord : Migration
  def change
    create_table :develpers do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.date :start_on
    end
  end
end

DevelopersMigration.migrate(:up)

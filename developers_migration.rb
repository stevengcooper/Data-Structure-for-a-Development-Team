require './activerecord'

class DevelopersMigration < ActiveRecord : Migration
  def change
    create_table :develpers do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.date :start_date
    end
  end
end

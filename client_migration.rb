require './activerecord'

class ClientsMigration < ActiveRecord : Migration
  def change
    create_table :clients do |t|
      t.integer :industry_id
      t.string :name
      t.integer :user_id
      t.string :client_info_string
      t.integer :client_info_integer
    end
  end
end

require './activerecord'

class ClientsMigration < ActiveRecord : Migration
  def change
    create_table :clients do |t|
      t.integer :industry_id
      t.string :name
      t.integer :user_id
    end
  end
end

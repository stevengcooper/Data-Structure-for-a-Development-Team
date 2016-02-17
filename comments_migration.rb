require 'active_record'

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: 'db.sqlite3'
  )

class CommentsMigration < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :subject_id
      t.string :subject_type
      t.text :comments
      t.integer :developer_id
      t.timestamps null: false
    end
  end
end

CommentsMigration.migrate(:up)

class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.text :response
      t.integer :user_id
      t.integer :course_id

      t.timestamps null: false
    end
  end
end

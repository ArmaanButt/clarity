class CreateAggregatedResponses < ActiveRecord::Migration
  def change
    create_table :aggregated_responses do |t|
      t.string :question
      t.string :answer
      t.integer :course_id
      t.integer :count

      t.timestamps null: false
    end
  end
end

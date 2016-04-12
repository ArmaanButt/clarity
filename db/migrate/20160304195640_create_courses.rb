class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.integer :course_id
      t.text :course_name
      t.text :course_prof

      t.timestamps null: false
    end
  end
end

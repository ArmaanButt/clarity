class CreateCoursesUsersJoin < ActiveRecord::Migration
  def change
    create_table :courses_users, :id => false do |t|
      t.integer "course_id"
      t.integer "user_id"
    end
    add_index :courses_users, ["course_id", "user_id"]
  end

  def down
    drop_table :courses_users
  end
end

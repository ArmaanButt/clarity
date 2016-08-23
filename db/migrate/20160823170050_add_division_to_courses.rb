class AddDivisionToCourses < ActiveRecord::Migration
  def change
    add_column :courses, :division, :string
  end
end

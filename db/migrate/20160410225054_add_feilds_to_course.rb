class AddFeildsToCourse < ActiveRecord::Migration
  def change
    add_column :courses, :description, :string
    add_column :courses, :prerequisites, :string
  end
end

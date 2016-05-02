class AddCourseReferenceToSurveyResponse < ActiveRecord::Migration
  def change
    add_reference :response_sets, :course, index: true, foreign_key: true
  end
end

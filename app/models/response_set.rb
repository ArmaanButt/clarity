class ResponseSet < ActiveRecord::Base
  belongs_to :users
  belongs_to :course
  attr_accessible :course_id
end

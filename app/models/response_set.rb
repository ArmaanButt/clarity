class ResponseSet < ActiveRecord::Base
  include Surveyor::Models::ResponseSetMethods
  belongs_to :users
  belongs_to :course
  attr_accessible :course_id
end
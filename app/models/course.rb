class Course < ActiveRecord::Base
  has_and_belongs_to_many :users
  has_many :posts
  searchkick autocomplete: ['course_code']
  acts_as_commontable
end

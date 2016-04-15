class Course < ActiveRecord::Base
  has_and_belongs_to_many :users
  has_many :posts
  searchkick
  acts_as_commontable
end

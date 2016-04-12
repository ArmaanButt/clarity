class Course < ActiveRecord::Base
has_and_belongs_to_many :users
  searchkick
  acts_as_commontable
end

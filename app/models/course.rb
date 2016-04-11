class Course < ActiveRecord::Base
  searchkick
  acts_as_commontable
end

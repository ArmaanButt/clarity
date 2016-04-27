class ResponseSet < ActiveRecord::Base
  include Surveyor::Models::ResponseSetMethods
  belongs_to :users
end
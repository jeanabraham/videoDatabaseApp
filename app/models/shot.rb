class Shot < ActiveRecord::Base
  
  validates_presence_of :tape_id, :shot_in, :shot_out, :location, :province, :country, :keywords
  
end

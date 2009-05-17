class Actor < ActiveRecord::Base
  
  validates_presence_of :actor_name, :message => 'absent!'
  validates_length_of :actor_name, :minimum => 5, :message => 'too short, sucker!'
end

class Triggering < ActiveRecord::Base
  
  belongs_to :entry
  belongs_to :trigger
  
  attr_accessible :entry_id, :trigger_id
end

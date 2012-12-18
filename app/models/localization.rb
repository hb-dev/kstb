class Localization < ActiveRecord::Base
  
  belongs_to :entry
  belongs_to :location  
  
  attr_accessible :entry_id, :location_id
    
end

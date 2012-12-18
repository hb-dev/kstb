class Intake < ActiveRecord::Base
  
  belongs_to :entry
  belongs_to :medication  
  
  attr_accessible :amount, :effect, :medication_id
end

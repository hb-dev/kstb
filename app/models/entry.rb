class Entry < ActiveRecord::Base
  attr_accessible :comments, :duration, :intensity, :location, :medication, :medication_amount, :medication_effect, :nausea, :pit, :trigger, :type
end

class Entry < ActiveRecord::Base
  has_many :localizations
  has_many :intakes
  has_many :triggerings
  has_many :locations, :through => :localizations
  has_many :medications, :through => :intakes
  has_many :triggers, :through => :triggerings 

  attr_accessible :comments, :intensity, :nausea, :start_pit, :end_pit, :entry_type, :location_ids, :trigger_ids, :medication_ids


  def duration    
    start_pit = self.start_pit
    end_pit = self.end_pit
    if start_pit && end_pit
      duration = self.end_pit - self.start_pit
    else
      duration = 0
    end
    return duration    
  end

end


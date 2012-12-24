class Entry < ActiveRecord::Base
  has_many :localizations
  has_many :intakes
  has_many :triggerings
  has_many :locations, :through => :localizations
  has_many :medications, :through => :intakes
  has_many :triggers, :through => :triggerings 

  accepts_nested_attributes_for :intakes, :allow_destroy => true
  attr_protected :id
  
  validates :start_pit, :presence => true

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


class Trigger < ActiveRecord::Base
  
  has_many :triggerings
  has_many :entries, :through => :triggerings
  
  attr_accessible :title
  
  default_scope order('title')
  
  validates :title, :presence => true
  
end

class Location < ActiveRecord::Base
  
  has_many :localizations
  has_many :entries, through: :localizations
  
  attr_accessible :title
  
  validates :title, :presence => true
  
end

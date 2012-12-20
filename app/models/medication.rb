class Medication < ActiveRecord::Base
  attr_accessible :title
  
  default_scope order('title')
end

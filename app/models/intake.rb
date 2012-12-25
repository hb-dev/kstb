class Intake < ActiveRecord::Base
  
  belongs_to :entry
  belongs_to :medication  
  
  attr_accessible :amount, :effect, :medication_id, :entry_id
  
  def formated_amount
    fraction = self.amount.modulo(1)
    if fraction != 0
      return self.amount
    else
      return self.amount.to_i
    end
  end
end

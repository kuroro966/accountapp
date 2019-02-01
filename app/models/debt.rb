class Debt < ApplicationRecord
validates :date,:debt1,:debt2,:debt3,:debt4,:debt5,
    presence: true

 def sum
   self.sum = self.debt1+self.debt2+self.debt3+self.debt4+self.debt5
 end



end

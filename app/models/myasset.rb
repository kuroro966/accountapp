class Myasset < ApplicationRecord
 # validates :date,:asset1,:asset2,:asset3,:asset4,:asset5,:asset6,:asset7, presence: true

 validates :date,:asset1,:asset2,:asset3,:asset4,:asset5,:asset6,:asset7,
    presence: true




	# def sum_asset_from1_to7
	# 	self.asset1+self.asset2+self.asset3+self.asset4+self.asset5+self.asset6+self.asset7
	# end
 
  def sum
    # before_save do
    self.sum = self.asset1+self.asset2+self.asset3+self.asset4+self.asset5+self.asset6+self.asset7
    # end
  end

end
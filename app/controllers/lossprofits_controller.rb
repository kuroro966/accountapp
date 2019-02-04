class LossprofitsController < ApplicationController
  def index
  	＠outcome = Outcome.all
  	@income = Income.all
  	@outcome_sum_price = Outcome.where("date between '#{@this_month_first} 00:00:00' and '#{@this_month_last} 23:59:59'").sum(:price) * -1
  	@income_sum_price = Income.where("date between '#{@this_month_first} 00:00:00' and '#{@this_month_last} 23:59:59'").sum(:price)
  	@all_sum_price = @outcome_sum_price + @income_sum_price


  	@today = Date.today;
  	@this_month_first = Date.new(@today.year,@today.month,1)
  	@this_month_last = Date.new(@today.year,@today.month,-1)
  	# @one_month_ago_first = Date.new(@today.year,@today.month-1,1)
  	# @one_month_ago_last = Date.new(@today.year,@today.month-1,-1)  	
  	

  	@backs = [1,2,3,4,5,6,7,8,9,10,11,12]
  	


  	#@test = group("MONTH(date)").sum(:price)
  end
end

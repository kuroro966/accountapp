class LossprofitsController < ApplicationController
  def index
  	＠outcome = Outcome.all
  	@income = Income.all
  	@outcome_sum_price = Outcome.sum(:price) * -1
  	@income_sum_price = Income.sum(:price)
  	@all_sum_price = @outcome_sum_price + @income_sum_price
  	#@test = group("MONTH(date)").sum(:price)
  end
end

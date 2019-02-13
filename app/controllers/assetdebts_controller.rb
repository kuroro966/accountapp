class AssetdebtsController < ApplicationController
  def index
	  #@assetSums = Myasset.select("sum")
	  #@debtSums = Debt.select("sum")
	  @assets = Myasset.all
	  @debts = Debt.all
	  
	  if @assets.present?
		  @current_asset_date = @assets[-1].date 
		  @current_asset_sum = @assets[-1].sum
		 end

   if	@debts.present?
   	@current_debt_date = @debts[-1].date
		  @current_debt_sum = @debts[-1].sum * -1
   end

			if @assets.present? && @debts.present?
		  @assetdebt = @current_asset_sum + @current_debt_sum
   end




   if @assets.length >= 2
	   @twomonthago_asset_date = @assets[-2].date
		  @twomonthago_asset_sum = @assets[-2].sum
   end

	  if @debts.length >= 2
				@twomonthago_debt_date = @debts[-2].date
		  @twomonthago_debt_sum = @debts[-2].sum * -1
	  end


	  if @assets.length >= 2 && @debts.length >= 2
	   @twomonthago_assetdebt = @twomonthago_asset_sum + @twomonthago_debt_sum
		  @compared_with_lastmonth = @assetdebt - @twomonthago_assetdebt
	  end

  end
end

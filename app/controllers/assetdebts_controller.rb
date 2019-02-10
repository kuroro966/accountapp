class AssetdebtsController < ApplicationController
  def index
	  #@assetSums = Myasset.select("sum")
	  #@debtSums = Debt.select("sum")
	  @assets = Myasset.all
	  @debts = Debt.all
	  @current_asset_date =@assets[-1].date
	  @current_debt_date =@debts[-1].date
	  @current_asset_sum =@assets[-1].sum
	  @current_debt_sum =@debts[-1].sum * -1
	  @assetdebt = @current_asset_sum + @current_debt_sum

   @twomonthago_asset_date =@assets[-2].date
	  @twomonthago_debt_date =@debts[-2].date
	  @twomonthago_asset_sum =@assets[-2].sum
	  @twomonthago_debt_sum =@debts[-2].sum * -1
	  @twomonthago_assetdebt = @twomonthago_asset_sum + @twomonthago_debt_sum

  end
end

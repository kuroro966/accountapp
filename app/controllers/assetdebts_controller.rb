class AssetdebtsController < ApplicationController
  def index
  @assetSums = Myasset.select("sum")
  @debtSums = Debt.select("sum")

  end
end

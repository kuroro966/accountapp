class IncomesController < ApplicationController

  def index
  	@incomes=Income.all
    @sum_price=Income.sum(:price)
  end

  def new
  	@income = Income.new  		
  end

  def edit
    @income = Income.find(params[:id])
  end

  def create
  	@income = Income.create(create_params)
    redirect_to action: :index
  end

  def update
    @income = Income.find(params[:id])
    @income.update(update_params)
    redirect_to action: :index    
  end

  def destroy
    @income = Income.find(params[:id])
    @income.destroy
    redirect_to action: :index   
  end


  private
  def create_params
    params.require(:income).permit(:date,:place,:marchandise,:price,:category_id)
  end

  def update_params
    params.require(:income).permit(:date,:place,:marchandise,:price,:category_id)
  end

  def sum_income

  end

end

class OutcomesController < ApplicationController

  #before_action :move_to_index, except: [:index,:new]#indexアクションの場合は実行しない


  def index
  	@outcomes=Outcome.all
    @sum_price=Outcome.sum(:price)
  end

  def new
  	@outcome = Outcome.new  		
  end

  def edit
    @outcome = Outcome.find(params[:id])
  end

  def create
  	@outcome = Outcome.create(create_params)
    redirect_to action: :index
  end

  def update
    @outcome = Outcome.find(params[:id])
    @outcome.update(update_params)
    redirect_to action: :index    
  end

  def destroy
    @outcome = Outcome.find(params[:id])
    @outcome.destroy
    redirect_to action: :index   
  end


  private
  def create_params
    params.require(:outcome).permit(:date,:place,:marchandise,:price,:category_id)
  end

  def update_params
    params.require(:outcome).permit(:date,:place,:marchandise,:price,:category_id)
  end

  def sum_outcome

  end

  
end

class OutcomesController < ApplicationController

  #before_action :move_to_index, except: [:index,:new]#indexアクションの場合は実行しない


  def index
  	@outcomes=Outcome.all
  end

  def new
  	@outcome = Outcome.new  		
  end

  def create
  	@outcome = Outcome.create(create_params)
    redirect_to action: :index
  
  end

  private
  def create_params
    params.require(:outcome).permit(:date,:place,:marchandise,:price,:category_id)
  end

  
end

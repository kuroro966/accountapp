class MyassetsController < ApplicationController

  include ApplicationHelper


    def index
    @myassets = Myasset.all
    end

    def new
    @myasset = Myasset.new		
    end

    def edit
    @myasset = Myasset.find(params[:id])
    end

    def create
      @myasset = Myasset.create(create_params)
      if @myasset.save
      redirect_to action: :index
      else
      render action: :new
      end
    end

    def update
      @myasset = Myasset.find(params[:id])
      @myasset.update(update_params)
      if @myasset.save
      redirect_to action: :index
      else
      render action: :new
      end    
    end

    def destroy
    @myasset = Myasset.find(params[:id])
    @myasset.destroy
    redirect_to action: :index   
    end

    private
    def create_params
    params.require(:myasset).permit(:date,:asset1,:asset2,:asset3,:asset4,:asset5,:asset6,:asset7)
    end

    def update_params
    params.require(:myasset).permit(:date,:asset1,:asset2,:asset3,:asset4,:asset5,:asset6,:asset7)
    end
  

end

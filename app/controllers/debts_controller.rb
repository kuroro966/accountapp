class DebtsController < ApplicationController



  def index
    @debts = Debt.all
    end

    def new
    @debt = Debt.new		
    end

    def edit
    @debt = Debt.find(params[:id])
    end

    def create
      @debt = Debt.create(create_params)
      if @debt.save
      redirect_to action: :index
      else
      render action: :new
      end
    end

    def update
      @debt = Debt.find(params[:id])
      @debt.update(update_params)
      if @debt.save
      redirect_to action: :index
      else
      render action: :new
      end    
    end

    def destroy
    @debt = Debt.find(params[:id])
    @debt.destroy
    redirect_to action: :index   
    end

    private
    def create_params
    params.require(:debt).permit(:date,:debt1,:debt2,:debt3,:debt4,:debt5)
    end

    def update_params
    params.require(:debt).permit(:date,:debt1,:debt2,:debt3,:debt4,:debt5)
    end

end

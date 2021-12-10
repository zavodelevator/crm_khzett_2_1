class PurchasesController < ApplicationController

    
    before_action :set_customer!
    def create
        @purchase = @customer.purchases.build purchase_params
        
        if @purchase.save
            flash[:success] = "Answer craeated"
            redirect_to customer_path(@customer)
        else
           render "customers/show"
        end
    end


    def purchase_params
        params.require(:purchase).permit( :name_product, :count_price_params,:stage_buy, :stage_in_corp, :plus_info)
    end

    private 

    def set_customer!
        @customer = Customer.find params[:customer_id]
       
    end
 
end
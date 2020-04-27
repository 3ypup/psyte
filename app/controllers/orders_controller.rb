class OrdersController < ApplicationController

def new

	

end


def create 

	@order = Order.new(order_params)


      if  @order.save
     
        redirect_to posts_url
      else
        render action: 'new'
      end


end



def order_params
    params.require(:order).permit(

      :author,
      :a_email,
      :a_phone
)
  end

end

class OrdersController < ApplicationController

def new

	

end


def create 

	@order = Order.new(order_params)
	@author = @order.author
	@a_email = @order.a_email
	@a_phone = @order.a_phone


      if  @order.save
     	OrdersMailer.new_order(@author, @a_email, @a_phone).deliver
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

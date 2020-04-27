class OrdersMailer < ApplicationMailer


	def new_order(author, a_email, a_phone)


    @author = author

    @email = a_email

    @phone = a_phone


  mail to: "evgenia.salnikova@gmail.com", subject: "Новый клиент!"
  end


end

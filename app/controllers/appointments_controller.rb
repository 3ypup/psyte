class AppointmentsController < ApplicationController


def new

end

def create

end



def appointments_params
    params.require(:form).permit(

      :author,
      :email,
      :phone
)
  end
end

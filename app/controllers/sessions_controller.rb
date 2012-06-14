class SessionsController < ApplicationController
  
  def new
  end
  
  def create
    user = User.find_by_name(params[:session][:name])
    if user && user.authenticate(params[:session][:password])
      sign_in user
      #redirect_back_or user
      redirect_to :back
    else
      # Create an error message and re-render the signin form.
      flash[:error] = 'Invalid name/password combination' # Not quite right!    
      redirect_to :back
    end
  end
  
  def destroy
    sign_out
    redirect_to root_path
  end

end

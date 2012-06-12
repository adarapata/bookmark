class SessionsController < ApplicationController
  
  def new
  end
  
  def create
    user = User.find_by_name(params[:session][:name])
    if user && user.authenticate(params[:session][:password])
      sign_in user
      redirect_to user
    else
      # Create an error message and re-render the signin form.
<<<<<<< HEAD
      flash[:error] = 'Invalid email/password combination' # Not quite right!      
=======
      flash[:error] = 'Invalid name/password combination' # Not quite right!      
>>>>>>> add-header
      render 'new'
    end
  end
  
  def destroy
    sign_out
    redirect_to root_path
  end

end

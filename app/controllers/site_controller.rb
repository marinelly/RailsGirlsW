class SiteController < ApplicationController
  def index


  
  end

  def login
  	if @user = login(params[:email], params[:password])
  		redirect_to dashboard_path, notice: 'Logeado Satisfactoriamente!!!!'
	else	
		render 'index'
	end
  end


  def dashboard
  	
  end
end

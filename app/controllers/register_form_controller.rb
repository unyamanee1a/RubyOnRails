class RegisterFormController < ApplicationController
  def new
    @register = RegisterForm.new
  end

  def create
    @register = RegisterForm.new(userData)
    if @register.save
      redirect_to root_path
    else
        render :new
    end 
  end
end
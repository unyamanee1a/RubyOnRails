class RegisterFormController < ApplicationController
  def new
    @register = RegisterForm.new
  end

  def create
    @register = RegisterForm.new(register_params)
    if @register.save
      redirect_to root_path
    else
        render :new
    end
  end

  def index
    @register = RegisterForm.all
  end

  private

  def register_params
    params.require(:register_form).permit(:fristName, :lastName, :birthDate, :gender, :email, :phoneNumber, :subject)
  end
end
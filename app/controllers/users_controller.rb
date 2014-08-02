class UsersController < Devise::RegistrationsController

  # def new
  #   @user = User.new
  # end
  #
  # def create
  #   user = User.create(user_params)
  #   redirect_to root_path
  # end
  #
  # def show
  #
  # end



  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :full_name)
  end
end
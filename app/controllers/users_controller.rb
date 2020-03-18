class UsersController < ApplicationController

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        respond_to do |f|
            if @user.valid?
                @user.mobile = Twilio::Lookup.check_mobile(@user.phone)
                @user.save
                f.html { redirect_to pages_path }
            else
                f.html { render action: :new }
            end
        end
    end

    def send_text
        message = "Hello from Twilio!"
        Twilio::SMS.send_sms(message, @user.phone) if @user.mobile
        redirect_to pages_path
    end

    private

    def user_params
        params.require(:user).permit(:email, :password, :password_confirmation, :phone)
end

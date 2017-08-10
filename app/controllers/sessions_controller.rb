class SessionsController < ApplicationController
    skip_before_action :authenticate, only:[:new, :create]

    def new
        @user = User.new
    end

    def create
        @user = User.where(email: params[:user][:email])
        if @user && @user.authenticate(params[:user][:password])
            sign_in
            redirect_to root_path
        else
            redirect_to sign_in
        end
    end

    def destroy
        sign_out
        redirect_to root_path
    end
end

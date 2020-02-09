class SessionsController < ApplicationController

    def new
    end

    def create
       
        return redirect_to :'login' if 
        !params[:name] || params[:name].empty?
        session[:name] = params[:name]
        redirect_to :'root'
    end

    def destroy
       
        session.delete(:name) if
        session[:name] != nil

    end


end
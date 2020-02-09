class SessionsController < ApplicationController

    def new
    end

    # def create 
    #     if session[:name] = params[:name] 
    #         redirect_to '/'
    #     elsif
    #         redirect_to '/login'
    #     end
    # end 

    def create
        if !params[:name] || params[:name].empty?
         redirect_to '/login'
        elsif
        session[:name] = params[:name]
        redirect_to '/'
        end
    end

    # def create
    #     if session[:name] = params[:name]
    #         redirect_to '/'
    #     elsif
    #         session[:name] == params[]
    #         redirect_to '/'
    #     else 
    #         redirect_to '/login'
    #     end

    # end


    def destroy 
        session.delete :name 

    end 

end
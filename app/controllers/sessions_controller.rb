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
        return redirect_to(controller: 'sessions',
                           action: 'new') if !params[:name] || params[:name].empty?
        session[:name] = params[:name]
        redirect_to controller: 'application', action: 'hello'
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
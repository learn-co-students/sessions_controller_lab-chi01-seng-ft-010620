class SessionsController < ApplicationController

    def new

    end

    def create
        session[:name] = params[:name]
        if session[:name] 
            if session[:name].length > 0
                redirect_to "/"
            else 
                redirect_to '/login'
            end
        else 
            redirect_to '/login'
        end
    end



    def destroy
        session[:name] = nil
        redirect_to '/login'
    end
end
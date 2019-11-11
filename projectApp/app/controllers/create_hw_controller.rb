class CreateHwController < ApplicationController
    def new
    end
    
    def create
        render plain: params[:create_hw].inspect
    end
end

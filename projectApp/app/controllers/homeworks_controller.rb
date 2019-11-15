class HomeworksController < ApplicationController
    def show
        @homework = Homework.find(params[:id])
    end
    
    def new
        @homework = Homework.new
    end
    
    def create
        @homework = Homework.new(homework_params)
        
        if @homework.save
            redirect_to @homework
        else
            render 'new'
        end
    end
end

private
    def homework_params
        params.require(:homework).permit(:hw_name, :due_date, :time_required, :note)
    end
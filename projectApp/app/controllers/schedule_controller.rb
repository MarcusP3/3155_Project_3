class ScheduleController < ApplicationController
  def index
    @homework = Homework.all
    @homework_by_date = @homework.group_by(&:due_date)
    @date = params[:date] ? Date.parse(params[:date]) : Date.today
  end
end

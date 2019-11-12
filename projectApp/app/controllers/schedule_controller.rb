class ScheduleController < ApplicationController
  def index
    @homework = Homework.all
  end
end

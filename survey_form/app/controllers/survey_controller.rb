class SurveyController < ApplicationController
  def index
    session[:views] ||= 0
  end

  def process_survey
    session[:views] = session[:views] + 1
    session[:result] = params[:survey]
    flash[:success] = "Thanks for submitting this form! You have submitted this form #{session[:views]} time(s) now."
    redirect_to '/survey/result'
  end

  def result
    @result = session[:result]
    # render :json => @result
  end
end

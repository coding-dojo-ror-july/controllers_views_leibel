class DisplaysController < ApplicationController
  def index
    render html: 'What do you want me to say???'
  end

  def hello
    render html: 'Hello CodingDojo!'
  end

  def say
    render html: "Saying Hello #{params[:name].capitalize}!"
  end

  def times
    session[:count] ||= 0
    render html: "You have visited this url #{session[:count] += 1} time(s)"
  end

  def michael
    redirect_to controller: 'displays', action: 'say', name: 'Joe'
  end

  def restart
    reset_session
    render html: "Destroyed Session"
  end
end

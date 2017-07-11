class TimesController < ApplicationController
  def main
    render html: "The current time and date is: " + Time.now.to_formatted_s(:long)
  end
end

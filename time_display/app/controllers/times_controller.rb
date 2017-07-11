class TimesController < ApplicationController
  def main
    @time = Time.now.to_formatted_s(:long)
    render "main"
  end
end

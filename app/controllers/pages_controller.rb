class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @courts = Court.geocoded
    @event = Event.new
    @court = Court.new
    @marker = @courts.map do |court|
      {
        lat: court.latitude,
        lng: court.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { court: court }),
      }
    end
  end
end

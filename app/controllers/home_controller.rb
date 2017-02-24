class HomeController < ApplicationController
  def index
    @subscriber = Subscriber.new
    @events = Event.all
  end
end

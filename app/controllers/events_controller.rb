class EventsController < ApplicationController
  def index
    @events = Event.all
  end
  def show
    @event = Event.find(params[:id])
  end
  def new
    @event = Event.new
  end
  def create
    Event.create(
      start_date: DateTime.new(2001,rand(1...12),rand(1...28),4,5,6),
      #=> #<DateTime: 2001-02-03T04:05:06+00:00 ...>
      duration: rand(1...90),
      title: Faker::Lorem.word,
      description: Faker::Lorem.paragraph,
      price: rand(1...1000),
      location: "Paris",
      user: current_user
  )
  redirect_to root_path
  end
end

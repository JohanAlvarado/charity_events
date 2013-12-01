class EventsController < ApplicationController
  expose(:event,
         attributes: :event_params)

  def index
  end

  def create
    if event.save
      binding.pry
    else
      binding.pry
    end
  end

  private

  def event_params
    params.require(:event).permit(:title,
                                  :description,
                                  :place,
                                  :date,
                                  :hour,
                                  :photo)
  end



end

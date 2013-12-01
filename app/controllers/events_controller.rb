class EventsController < ApplicationController
  expose(:event,
         attributes: :event_params)
  expose(:events)

  def index
  end

  def create
    if event.save
      flash[:notice] = "Succesfully saved"
    else
      flash[:alert] = "There was an error when try us save the event"
      render :new
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

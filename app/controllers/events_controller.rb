class EventsController < ApplicationController
  expose(:event,
         attributes: :event_params)
  expose(:search,
         attributes: :search)
  expose(:events)

  def index
  end

  def create
    event.admin = current_admin
    if event.save
      flash[:notice] = "Succesfully saved"
    else
      flash[:alert] = "There was an error when try us save the event"
      render :new
    end
  end

  private

  def search
    events.search(params[:page])
  end


  def event_params
    params.require(:event).permit(:title,
                                  :description,
                                  :place,
                                  :date,
                                  :hour,
                                  :photo,
                                  :category)
  end



end

class Admin::EventsController < ApplicationController
  expose(:event)
  expose(:events){ current_admin.events }
  expose(:search,
         attributes: :search)

  def search
    events.search(params[:page])
  end

end

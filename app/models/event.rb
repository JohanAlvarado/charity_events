class Event < ActiveRecord::Base
  belongs_to :user
  mount_uploader :photo, PhotoUploader
  paginates_per 50

  CATEGORIES = ["Information", "We want your Support", "Charity Dinner"]

  def self.search(params)
    order(updated_at: :desc).page params
  end

  def self.current_events? current_admin
    return true if current_admin.events
  end
end

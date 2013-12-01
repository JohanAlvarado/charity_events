class Event < ActiveRecord::Base
  mount_uploader :photo, PhotoUploader
  CATEGORIES = ["Information", "We want your Support", "Charity Dinner"]
  paginates_per 50

  def self.search(params)
    order(updated_at: :desc).page params
  end

end

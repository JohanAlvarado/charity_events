class Event < ActiveRecord::Base
  mount_uploader :photo, PhotoUploader
  CATEGORIES = ["Information", "We want your Support", "Charity Dinner"]
end

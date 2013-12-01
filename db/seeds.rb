40.times do |i|
  event = Event.new
  event.title = Faker::Name.name
  event.description = "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
  event.place = "Colima"
  event.date = "2015-10-01"
  event.hour = 21
  event.photo = "1459162_624520834278366_1375392439_n.jpg"
  event.admin = 1
  event.save
end

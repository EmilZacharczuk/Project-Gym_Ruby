require_relative('../models/member')
require_relative('../models/session')
require_relative('../models/booking')
require("pry-byebug")

Member.delete_all
Session.delete_all
Booking.delete_all

member_1 = Member.new(
  {"first_name" => "John",
   "second_name" => "Walker",
   "address" => "26 Buchanan Street EH3 5BF Edinburgh"
  })

member_1.save()

member_2 = Member.new(
  {"first_name" => "Andrew",
   "second_name" => "Wilson",
   "address" => "54 Frederick Street EH1 8BF Edinburgh"
    })

member_2.save()

member_3 = Member.new(
  {"first_name" => "Phil",
   "second_name" => "Collins",
   "address" => "3A Leith Walk EH5 9XF Edinburgh"
    })

member_3.save()

member_4 = Member.new(
    {"first_name" => "Steve",
     "second_name" => "Harrison",
     "address" => "17/4 Woodburn Terrace EH22 2FT Dalkeith"
      })

member_4.save()

member_5 = Member.new(
    {"first_name" => "Peter",
     "second_name" => "McDonald",
     "address" => "6 Rose Avenue EH17 5GF Broxburn"
      })

member_5.save()

member_6 = Member.new(
    {"first_name" => "Frank",
     "second_name" => "Lampart",
     "address" => "176 George Street EH1 6FT Edinburgh"
      })

member_6.save()

member_7 = Member.new(
    {"first_name" => "George",
     "second_name" => "Ruskin",
     "address" => "678 Rose Street EH12 5PO Edinburgh"
      })

member_7.save()

member_8 = Member.new(
    {"first_name" => "Piotr",
     "second_name" => "Burzynski",
     "address" => "2/1 Gorgie Road EH15 1EG Edinburgh"
      })

member_8.save()

member_9 = Member.new(
    {"first_name" => "Steven",
     "second_name" => "Gerard",
     "address" => "1 Fontainbridge Park EH3 5PO Edinburgh"
      })

member_9.save()

member_10 = Member.new(
    {"first_name" => "Michael",
     "second_name" => "Owen",
     "address" => "63 Leith Walk EH12 8TR Edinburgh"
      })

member_10.save()

member_11 = Member.new(
    {"first_name" => "Liu",
     "second_name" => "Xiang",
     "address" => "5 Frederick Street EH1 1TO Edinburgh"
      })

member_11.save()

member_12 = Member.new(
    {"first_name" => "Chris",
     "second_name" => "Melrose",
     "address" => "1 House Terrace EH23 5GT Mayfield"
      })

member_12.save()

session_1 = Session.new(
    {"title" => 'Yoga',
     "instructor" => "Jerry Maison",
     "day" => "Monday",
     "start_time" => "07:00",
     "capacity" => 10
     })

session_1.save()

session_2 = Session.new(
    {"title" => 'Spin',
     "instructor" => "Jack Henderson",
     "day" => "Tuesday",
     "start_time" => "06:30",
     "capacity" => 5
     })

session_2.save()

session_3 = Session.new(
    {"title" => 'Body Pump',
     "instructor" => "Anne McDowell",
     "day" => "Monday",
     "start_time" => "13:00",
     "capacity" => 10
     })

session_3.save()

session_4 = Session.new(
    {"title" => 'Kick Boxing',
     "instructor" => "Frank Richards",
     "day" => "Wednesday",
     "start_time" => "18:30",
     "capacity" => 10
     })

session_4.save()

session_5 = Session.new(
    {"title" => 'Cardion Street Funk',
     "instructor" => "Joel King",
     "day" => "Thursday",
     "start_time" => "21:00",
     "capacity" => 10
     })

session_5.save()

session_6 = Session.new(
    {"title" => 'ABS Turbo',
     "instructor" => "Marry Erwin",
     "day" => "Friday",
     "start_time" => "07:30",
     "capacity" => 10
     })

session_6.save()

session_7 = Session.new(
    {"title" => 'Body Attack',
     "instructor" => "Nancy Club",
     "day" => "Monday",
     "start_time" => "20:30",
     "capacity" => 10
     })

session_7.save()

session_8 = Session.new(
    {"title" => 'Pilates',
     "instructor" => "Marry Kerry",
     "day" => "Tuesday",
     "start_time" => "21:00",
     "capacity" => 10
     })

session_8.save()

session_9 = Session.new(
    {"title" => 'Cysle Spin',
     "instructor" => "Marry Erwin",
     "day" => "Wednesday",
     "start_time" => "19:45",
     "capacity" => 10
     })

session_9.save()

session_10 = Session.new(
    {"title" => 'Pole Fitness',
     "instructor" => "Katy Melua",
     "day" => "Thursday",
     "start_time" => "18:30",
     "capacity" => 10
     })

session_10.save()

session_11 = Session.new(
    {"title" => 'Street Dance',
     "instructor" => "John Martins",
     "day" => "Friday",
     "start_time" => "20:15",
     "capacity" => 10
     })

session_11.save()


booking_1 = Booking.new(
    {"member_id" => member_1.id,
     "session_id" => session_1.id
   })
booking_1.save()

booking_2 = Booking.new(
    {"member_id" => member_2.id,
     "session_id" => session_2.id
   })

booking_2.save()

booking_3 = Booking.new(
    {"member_id" => member_3.id,
     "session_id" => session_3.id
   })

booking_3.save()

booking_4 = Booking.new(
    {"member_id" => member_4.id,
     "session_id" => session_4.id
   })

booking_4.save()

booking_5 = Booking.new(
    {"member_id" => member_5.id,
     "session_id" => session_5.id
   })

booking_5.save()

booking_6 = Booking.new(
    {"member_id" => member_5.id,
     "session_id" => session_1.id
   })

booking_6.save()

booking_7 = Booking.new(
    {"member_id" => member_6.id,
     "session_id" => session_6.id
   })

booking_7.save()

booking_8 = Booking.new(
    {"member_id" => member_7.id,
     "session_id" => session_7.id
   })

booking_8.save()

booking_9 = Booking.new(
    {"member_id" => member_7.id,
     "session_id" => session_3.id
   })

booking_9.save()

booking_10 = Booking.new(
    {"member_id" => member_7.id,
     "session_id" => session_10.id
   })

booking_10.save()

booking_11 = Booking.new(
    {"member_id" => member_8.id,
     "session_id" => session_8.id
   })

booking_11.save()

booking_12 = Booking.new(
    {"member_id" => member_9.id,
     "session_id" => session_9.id
   })

booking_12.save()


binding.pry
nil

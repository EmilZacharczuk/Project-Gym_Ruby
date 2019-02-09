require_relative('../models/member')
require_relative('../models/session')
require_relative('../models/booking')
require("pry-byebug")

Member.delete_all
Session.delete_all

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

session_1 = Session.new(
    {"title" => 'Yoga',
     "instructor" => "Jerry Maison",
     "day" => "Monday",
     "start_time" => "07:00"
     })

session_1.save()

session_2 = Session.new(
    {"title" => 'Spin',
     "instructor" => "Jack Henderson",
     "day" => "Tuesday",
     "start_time" => "06:30"
     })

session_2.save()

session_3 = Session.new(
    {"title" => 'Body Pump',
     "instructor" => "Anne McDowell",
     "day" => "Monday",
     "start_time" => "13:00"
     })

session_3.save()

session_4 = Session.new(
    {"title" => 'Kick Boxing',
     "instructor" => "Frank Richards",
     "day" => "Wednesday",
     "start_time" => "18:30"
     })

session_4.save()

session_5 = Session.new(
    {"title" => 'Cardion Street Funk',
     "instructor" => "Joel King",
     "day" => "Thursday",
     "start_time" => "21:00"
     })

session_5.save()

session_6 = Session.new(
    {"title" => 'ABS Turbo',
     "instructor" => "Marry Erwin",
     "day" => "Friday",
     "start_time" => "07:30"
     })

session_6.save()

binding.pry
nil

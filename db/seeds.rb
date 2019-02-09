require_relative('../models/member')
require_relative('../models/session')
require_relative('../models/booking')
require("pry-byebug")

Member.delete_all

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



binding.pry
nil

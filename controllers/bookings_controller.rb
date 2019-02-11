require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative('../models/booking.rb')
require_relative('../models/member.rb')
require_relative('../models/session.rb')
also_reload('../models/*')

get '/bookings' do
  @bookings = Booking.all()
  erb (:"bookings/index")
end

get '/bookings/new' do
  @members = Member.all()
  @sessions = Session.all()
  erb (:"bookings/new")
end

post '/bookings' do
  Booking.new(params).save
  redirect '/bookings'
end

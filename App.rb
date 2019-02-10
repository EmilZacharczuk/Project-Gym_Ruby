require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative('controllers/members_controller')
require_relative('controllers/sessions_controller')
require_relative('controllers/bookings_controller')

get '/' do
  erb( :index )
end

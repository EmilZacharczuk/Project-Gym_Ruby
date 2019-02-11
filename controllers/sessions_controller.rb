require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative('../models/session.rb')
also_reload('../models/*')

get '/sessions' do
  @sessions = Session.all()
  erb (:"sessions/index")
end

get '/sessions/new' do
  erb (:"sessions/new")
end

get '/sessions/:id' do
  @session = Session.find(params['id'].to_i)
  erb (:"sessions/show")
end

post '/sessions' do
  Session.new(params).save
  redirect to '/sessions'
end

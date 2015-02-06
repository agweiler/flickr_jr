enable :sessions

get '/' do
  session.clear
  erb :index
end

get '/logout' do
  session.clear
  redirect '/'
end
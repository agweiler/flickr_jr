
set :protection, except: :session_hijacking

get '/signup' do
erb :signup
end

get '/login' do
erb :login
end

get '/albums/:username' do
 p "+++++++++++++++++++++++++++++++++++"
 p session[:id]
 @user = User.find_by_id(session[:id])
 @album = Album.where(user_id: session[:id])
 p @album
 erb :album
end

post '/signup/user' do
  @user = User.create(params[:post])
  session[:id] = @user.id

  redirect to ('/albums/' + @user.name)
end


post '/login/user' do
  @user = User.authenticate(params[:post])

  if @user
    session[:id] = @user.id
    p session[:id]
    redirect to('/albums/' + @user.name)
  else
    redirect to ("/")
  end

end
post '/album/new' do
  @user = User.find_by_id(session[:id])
  @album = @user.albums.create(title: params[:title])
  redirect to '/albums/:username'
end

get '/album/:album_id' do
   @user = User.find_by_id(session[:id])
   @album = Album.find_by_id(params[:album_id])

 erb :photo
end

post '/upload/:album_id' do
    @album = Album.find_by_id(params[:album_id])
    @album.photos.create(file: params[:image])

    redirect to "/album/#{params[:album_id]}"
end
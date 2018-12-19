json.partial! "api/users/user", user: @user
json.photoUrls @user.photos.map {|file| url_for(file)}
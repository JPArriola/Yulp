json.extract! user, :id, :email, :first_name, :last_name, :zipcode
json.photoUrls user.photos.map {|file| url_for(file)}
json.reviews do 
  @business.reviews.each do |review|
    json.set! review.id do
      json.partial! "api/reviews/review", review: review
    end
  end
end
json.businessinfo do
  json.partial! "api/businesses/business", business: @business
  json.photoUrls @business.photos.map {|file| url_for(file)}
end
json.authors do
  @business.reviews.each do |review|
    json.set! review.author.id do
      json.partial! "api/users/user", user: review.author
      json.photoUrls review.author.photos.map {|file| url_for(file)}
    end
  end
end
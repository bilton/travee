json.array!(@itineraries) do |itinerary|
  json.extract! itinerary, :id, :entry, :author, :image_url, :vote
  json.url itinerary_url(itinerary, format: :json)
end

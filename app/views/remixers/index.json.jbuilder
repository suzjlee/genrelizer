json.array!(@remixers) do |remixer|
  json.extract! remixer, :song_id, :artist_id, :creator_id
  json.url remixer_url(remixer, format: :json)
end

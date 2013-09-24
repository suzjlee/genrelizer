json.array!(@artists) do |artist|
  json.extract! artist, :name
  json.url artist_url(artist, format: :json)
end

json.array!(@songs) do |song|
  json.extract! song, :title
  json.url song_url(song, format: :json)
end

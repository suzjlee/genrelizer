json.array!(@sub_genres) do |sub_genre|
  json.extract! sub_genre, :parent_genre_id, :child_genre_id
  json.url sub_genre_url(sub_genre, format: :json)
end

json.array!(@genre_descriptions) do |genre_description|
  json.extract! genre_description, :genre_id, :description_id
  json.url genre_description_url(genre_description, format: :json)
end

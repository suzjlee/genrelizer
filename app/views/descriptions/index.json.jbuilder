json.array!(@descriptions) do |description|
  json.extract! description, :body
  json.url description_url(description, format: :json)
end

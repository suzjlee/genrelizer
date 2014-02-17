json.array!(@ratings) do |rating|
  json.extract! rating, :score, :subject_type, :subject_id, :creator_id, :current
  json.url rating_url(rating, format: :json)
end

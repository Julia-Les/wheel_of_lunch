json.extract! review, :id, :restaurant_id, :rating, :notes, :match_id, :created_at, :updated_at
json.url review_url(review, format: :json)

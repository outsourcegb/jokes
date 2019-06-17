json.extract! joke, :id, :content, :user_id, :active, :pub_date, :created_at, :updated_at
json.url joke_url(joke, format: :json)

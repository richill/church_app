json.extract! gallery, :id, :name, :date, :description, :image, :user_id, :created_at, :updated_at
json.url gallery_url(gallery, format: :json)

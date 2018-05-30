json.extract! job, :id, :title, :location, :description, :close, :approve, :created_at, :updated_at
json.url job_url(job, format: :json)
